Reference: https://www.linuxuprising.com/2020/02/how-to-keep-onedrive-in-sync-with.html

### 1. Install onedrive client

```bash
sudo dnf install onedrive

sudo apt install onedrive
```



### 2. Configure Onedrive client

when configuring for first time, type `onedrive` and follow accordingly

```bash
onedrive
```

Perform quick dry run

```bash
onedrive --synchronize --verbose --dry-run
```

this will create folder at directory `~/Onedrive`

to change default directory for onedrive, copy `/usr/share/doc/onedrive/config` to `~/.config/onedrive/config` and edit `sync_dir`

```bash
cp /usr/share/doc/onedrive/config ~/.config/onedrive/
```



### 3.  Select what to sync

1. **Sync everything**: To sync everything, simple use following command.

   ```bash
   onedrive --synchronize
   ```

2. **Selective Sync**: To sync selective folders or files, create and add files in `~/.config/onedrive/sync_list`. This includes list of files/folders that will be sync

   ```
   Backup
   Photos
   ```

   remember to use `--resync` every time after making changes in sync_list

   ```bash
   onedrive --synchronize --resynx
   ```

### 4. Enable onedrive daemon

onedrive client deamon runs in `--monitor` mode. This will allow it to monitor local files and update when any changes are detected.

```bash
systemctl --user enable onedrive

systemctl --user start onedrive
```

Debugging

```bash
systemctl status --user onedrive

journalctl --user-unit onedrive -f
```

### 5. Further configuration

If not done already, copy `/usr/share/doc/onedrive/config` to `~/.config/onedrive/config`. If you wish to make any change, configure `~/.config/onedrive/config` file.
