Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 73D7D39196E
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 May 2021 16:01:22 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6B8E2613C4
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 May 2021 14:01:20 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id BC19261407; Wed, 26 May 2021 14:01:16 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E01B560A44;
	Wed, 26 May 2021 14:01:13 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id ACC416088F
 for <linaro-mm-sig@lists.linaro.org>; Wed, 26 May 2021 14:01:11 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id A280860A44; Wed, 26 May 2021 14:01:11 +0000 (UTC)
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com
 [209.85.128.53])
 by lists.linaro.org (Postfix) with ESMTPS id 831646088F
 for <linaro-mm-sig@lists.linaro.org>; Wed, 26 May 2021 14:01:09 +0000 (UTC)
Received: by mail-wm1-f53.google.com with SMTP id
 f6-20020a1c1f060000b0290175ca89f698so565056wmf.5
 for <linaro-mm-sig@lists.linaro.org>; Wed, 26 May 2021 07:01:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to; bh=20kdhGpgk8PlLZ93NP99SXrFrECvNqtnZONhZG90rb8=;
 b=HpWKulrUZTD3fsVHFjJW7bEiUTy5Pm70q0s36j2KwQyv7fjCgTtn0qUuMFfkYghSZ4
 FHzCAOHirNoCxWOOp648FL1O6rzDYm9Err6UJaptY/17q5JPxtrGm3MBDEPkvRz4ZXkT
 PE5tSl5/Y5yKW5jhh9+MomV1UQClQNHMjNNGM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to;
 bh=20kdhGpgk8PlLZ93NP99SXrFrECvNqtnZONhZG90rb8=;
 b=gLZhPUwerN2JvMdA8+WBvMEyADg2WGbcwcc2lveoUTz8ytkfhJhSJcDw5SL8A+/5pg
 EWYzAY9SrqWR6n5fY3lQc9ZXieWb00w4FNJN90+SGzh9Vg0wL4NXjFQoMCt5GJp214rr
 PIsiezrkLhy85VW9Bn0Itvrpn7TiqBxEqCZz0milfcAEzVkYsSmSZ5EVXSu066eiBFDu
 x3K4xfnMTzE4UP+BAiUGGScNc7JTZrxToAa8/x7nSZOCTCFoY3/XoNwokDuchjdKCNXK
 ZDCx/o1ASophSoiOASIqZlkQQQ6EXN3JYnthYzGPExIbYwk4Duod580MI3bA6Rbz7rgT
 mHCQ==
X-Gm-Message-State: AOAM533f1th+CQ2dnt4lbrLNAxyCgbo0gE3t4rCgjHAq9KRmSMFGrdGT
 kib0kU/TOWZzoxpQqTLHDVmHqg==
X-Google-Smtp-Source: ABdhPJxLNANj8Tui2b7nh/eyOLn71Ud4lPQ9uB4nX6zbAqbP214L7QsEjdkOUTKDoDSL2E71rAUNZQ==
X-Received: by 2002:a7b:c849:: with SMTP id c9mr3619643wml.84.1622037668422;
 Wed, 26 May 2021 07:01:08 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id v15sm6723449wmj.39.2021.05.26.07.01.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 26 May 2021 07:01:07 -0700 (PDT)
Date: Wed, 26 May 2021 16:01:05 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Message-ID: <YK5UoSy6lnK1x/2T@phenom.ffwll.local>
Mail-Followup-To: Christian =?iso-8859-1?Q?K=F6nig?=
 <christian.koenig@amd.com>, 
 Hridya Valsaraju <hridya@google.com>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 kernel-team@android.com, gregkh@linuxfoundation.org,
 john.stultz@linaro.org, surenb@google.com,
 kernel test robot <lkp@intel.com>
References: <20210525183720.1739480-1-hridya@google.com>
 <3fd5145c-bb71-6f09-d412-6328ae9ea0a1@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3fd5145c-bb71-6f09-d412-6328ae9ea0a1@amd.com>
X-Operating-System: Linux phenom 5.10.32scarlett+ 
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH v4] dmabuf: Add the capability to expose
 DMA-BUF stats in sysfs
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: "Unified memory management interest group."
 <linaro-mm-sig.lists.linaro.org>
List-Unsubscribe: <https://lists.linaro.org/mailman/options/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=unsubscribe>
List-Archive: <http://lists.linaro.org/pipermail/linaro-mm-sig/>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Subscribe: <https://lists.linaro.org/mailman/listinfo/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=subscribe>
Cc: kernel test robot <lkp@intel.com>, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 surenb@google.com, linaro-mm-sig@lists.linaro.org, john.stultz@linaro.org,
 daniel@ffwll.ch, Hridya Valsaraju <hridya@google.com>, kernel-team@android.com,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

On Wed, May 26, 2021 at 12:40:14PM +0200, Christian K=F6nig wrote:
> Hi Hridya,
> =

> Am 25.05.21 um 20:37 schrieb Hridya Valsaraju:
> > This patch allows statistics to be enabled for each DMA-BUF in
> > sysfs by enabling the config CONFIG_DMABUF_SYSFS_STATS.
> > =

> > The following stats will be exposed by the interface:
> > =

> > /sys/kernel/dmabuf/buffers/<inode_number>/exporter_name
> > /sys/kernel/dmabuf/buffers/<inode_number>/size
> > /sys/kernel/dmabuf/buffers/<inode_number>/attachments/<attach_uid>/devi=
ce
> > /sys/kernel/dmabuf/buffers/<inode_number>/attachments/<attach_uid>/map_=
counter
> > =

> > The inode_number is unique for each DMA-BUF and was added earlier [1]
> > in order to allow userspace to track DMA-BUF usage across different
> > processes.
> > =

> > Currently, this information is exposed in
> > /sys/kernel/debug/dma_buf/bufinfo.
> > However, since debugfs is considered unsafe to be mounted in production,
> > it is being duplicated in sysfs.
> > =

> > Procfs also uses the proc/<pid>/fdinfo/<fd> file to expose some
> > information about DMA-BUF fds. However, the existing procfs interfaces
> > can only provide information about the buffers for which processes
> > hold fds or have the buffers mmapped into their address space.
> > The sysfs interface also exposes attachment statistics for each buffer.
> > =

> > This information will be used to derive DMA-BUF
> > per-exporter stats and per-device usage stats for Android Bug reports.
> > The corresponding userspace changes can be found at [2].
> > Telemetry tools will also capture this information(along with other
> > memory metrics) periodically as well as on important events like a
> > foreground app kill (which might have been triggered by Low Memory
> > Killer). It will also contribute to provide a snapshot of the system
> > memory usage on other events such as OOM kills and Application Not
> > Responding events.
> > =

> > A shell script that can be run on a classic Linux environment to read
> > out the DMA-BUF statistics can be found at [3](suggested by John
> > Stultz).
> > =

> > The patch contains the following major improvements over v1:
> > 1) Each attachment is represented by its own directory to allow creating
> > a symlink to the importing device and to also provide room for future
> > expansion.
> > 2) The number of distinct mappings of each attachment is exposed in a
> > separate file.
> > 3) The per-buffer statistics are now in /sys/kernel/dmabuf/buffers
> > inorder to make the interface expandable in future.
> > =

> > All of the improvements above are based on suggestions/feedback from
> > Daniel Vetter and Christian K=F6nig.
> > =

> > [1]: https://nam11.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%=
2Flore.kernel.org%2Fpatchwork%2Fpatch%2F1088791%2F&amp;data=3D04%7C01%7Cchr=
istian.koenig%40amd.com%7C72394dc653194a3fd3fd08d91fac2fb9%7C3dd8961fe4884e=
608e11a82d994e183d%7C0%7C0%7C637575646676575967%7CUnknown%7CTWFpbGZsb3d8eyJ=
WIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&amp;=
sdata=3DEJ8KluQVn8FTOYRBAYpxAaG7rua46eQpmGwI%2FxIMthQ%3D&amp;reserved=3D0
> > [2]: https://nam11.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%=
2Fandroid-review.googlesource.com%2Fq%2Ftopic%3A%2522dmabuf-sysfs%2522&amp;=
data=3D04%7C01%7Cchristian.koenig%40amd.com%7C72394dc653194a3fd3fd08d91fac2=
fb9%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C637575646676575967%7CUnkno=
wn%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVC=
I6Mn0%3D%7C1000&amp;sdata=3D4sAAqK%2F6mtSr5MWpcu2EbwOvL93UA6kMwQ2uk4fMP1g%3=
D&amp;reserved=3D0+(status:open%20OR%20status:merged)
> > [3]: https://nam11.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%=
2Fandroid-review.googlesource.com%2Fc%2Fplatform%2Fsystem%2Fmemory%2Flibmem=
info%2F%2B%2F1549734&amp;data=3D04%7C01%7Cchristian.koenig%40amd.com%7C7239=
4dc653194a3fd3fd08d91fac2fb9%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C6=
37575646676575967%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luM=
zIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&amp;sdata=3Dhs40%2FMAnJaZQA4pkYucG=
qeCOGk2A9dUU%2Fj9ajqAoyFk%3D&amp;reserved=3D0
> > =

> > Signed-off-by: Hridya Valsaraju <hridya@google.com>
> > Reported-by: kernel test robot <lkp@intel.com>
> > ---
> > =

> > Hi Daniel,
> > =

> > I am sending the latest version of the DMA-BUF sysfs statistics patch to
> > the list again as per your suggestion to restart the discussion on it :)
> > Please do take a look and let me know your thoughts, thank you!
> =

> Daniel and Sumit might correct me, but I think in the previous discussion=
 we
> came pretty much to the conclusion that this is not the right approach.
> =

> DMA-buf is just the transport vehicle for driver allocations and as Daniel
> outlined it doesn't really make sense to account on a DMA-buf level except
> for debugging.
> =

> So while this patch is technically correct it will only add another halve
> backed uAPI. So question is rather what the alternative should look like?

So I chatted a bit with Android folks in a quick meeting, and the rough
conclusions we've had was

- for per-process stats we'll look into cgroups for tracking this (because
  Android will add matching cgroup for each app the want to track)

- same for the tracking for OOM killer

- that does leave them with a gap for shared processes, for which I agreed
  that just exposing the per dma-buf info is reasonable. It's not going to
  be super useful on desktop linux because the dma-buf tends to not stick
  around much, but it fits fairly perfectly on Android.

So yeah that's why I think this is ok to have.

What's missing is explaining this properly in the commit message. The
commit message explains nicely what's being added (which really should be
proper uapi docs in our Documentation/ files, not hidden in a commit
message where it's forgotten). But it fails to explain a bit the reasons
why we need this, I think a short summary of what Android needs (in an
abstract sense ie. high level semantics, not the specific implementation)
and why this fits and there's nothing better is needed here I think.

> Both AMD and Intel engineers are currently discussion a fdinfo based
> approach on the dri-devel mailing list.
> =

> I strongly suggest that you join this discussion as well (and sorry I don=
't
> have the link at hand).

Yeah I think since Android keeps the dma-buf fd around anyway (by design),
and since this is geared 100% for Android, implementing this exact
functionality as an fdinfo on the dma-buf sounds a lot cleaner to me.
Putting this in sysfs is really a bit a hack.

But it is also orthogonal to our fdinfo discussion, since our fdinfo is
for the drm_file, not the dma-buf fd.

Except ofc I'm yet again not quite understanding what exactly Android
wants/needs.
-Daniel

> =

> Regards,
> Christian.
> =

> > =

> > Regards,
> > Hridya
> > =

> > Changes in v4:
> > -Suppress uevents from kset creation to avoid waking up uevent listener=
s on
> > DMA-BUF export/release.
> > =

> > Changes in v3:
> > -Fix a warning reported by the kernel test robot.
> > =

> > Changes in v2:
> > -Move statistics to /sys/kernel/dmabuf/buffers in oder to allow addition
> > of other DMA-BUF-related sysfs stats in future. Based on feedback from
> > Daniel Vetter.
> > -Each attachment has its own directory to represent attaching devices as
> > symlinks and to introduce map_count as a separate file. Based on
> > feedback from Daniel Vetter and Christian K=F6nig. Thank you both!
> > -Commit messages updated to point to userspace code in AOSP that will
> > read the DMA-BUF sysfs stats.
> > =

> >   .../ABI/testing/sysfs-kernel-dmabuf-buffers   |  52 +++
> >   drivers/dma-buf/Kconfig                       |  11 +
> >   drivers/dma-buf/Makefile                      |   1 +
> >   drivers/dma-buf/dma-buf-sysfs-stats.c         | 300 ++++++++++++++++++
> >   drivers/dma-buf/dma-buf-sysfs-stats.h         |  62 ++++
> >   drivers/dma-buf/dma-buf.c                     |  37 +++
> >   include/linux/dma-buf.h                       |  20 ++
> >   7 files changed, 483 insertions(+)
> >   create mode 100644 Documentation/ABI/testing/sysfs-kernel-dmabuf-buff=
ers
> >   create mode 100644 drivers/dma-buf/dma-buf-sysfs-stats.c
> >   create mode 100644 drivers/dma-buf/dma-buf-sysfs-stats.h
> > =

> > diff --git a/Documentation/ABI/testing/sysfs-kernel-dmabuf-buffers b/Do=
cumentation/ABI/testing/sysfs-kernel-dmabuf-buffers
> > new file mode 100644
> > index 000000000000..73a8c372b0f2
> > --- /dev/null
> > +++ b/Documentation/ABI/testing/sysfs-kernel-dmabuf-buffers
> > @@ -0,0 +1,52 @@
> > +What:		/sys/kernel/dmabuf/buffers
> > +Date:		May 2021
> > +KernelVersion:	v5.13
> > +Contact:	Hridya Valsaraju <hridya@google.com>
> > +Description:	The /sys/kernel/dmabuf/buffers directory contains a
> > +		snapshot of the internal state of every DMA-BUF.
> > +		/sys/kernel/dmabuf/buffers/<inode_number> will contain the
> > +		statistics for the DMA-BUF with the unique inode number
> > +		<inode_number>
> > +Users:		kernel memory tuning/debugging tools
> > +
> > +What:		/sys/kernel/dmabuf/buffers/<inode_number>/exporter_name
> > +Date:		May 2021
> > +KernelVersion:	v5.13
> > +Contact:	Hridya Valsaraju <hridya@google.com>
> > +Description:	This file is read-only and contains the name of the expor=
ter of
> > +		the DMA-BUF.
> > +
> > +What:		/sys/kernel/dmabuf/buffers/<inode_number>/size
> > +Date:		May 2021
> > +KernelVersion:	v5.13
> > +Contact:	Hridya Valsaraju <hridya@google.com>
> > +Description:	This file is read-only and specifies the size of the DMA-=
BUF in
> > +		bytes.
> > +
> > +What:		/sys/kernel/dmabuf/buffers/<inode_number>/attachments
> > +Date:		May 2021
> > +KernelVersion:	v5.13
> > +Contact:	Hridya Valsaraju <hridya@google.com>
> > +Description:	This directory will contain subdirectories representing e=
very
> > +		attachment of the DMA-BUF.
> > +
> > +What:		/sys/kernel/dmabuf/buffers/<inode_number>/attachments/<attachme=
nt_uid>
> > +Date:		May 2021
> > +KernelVersion:	v5.13
> > +Contact:	Hridya Valsaraju <hridya@google.com>
> > +Description:	This directory will contain information on the attaching =
device
> > +		and the number of current distinct device mappings.
> > +
> > +What:		/sys/kernel/dmabuf/buffers/<inode_number>/attachments/<attachme=
nt_uid>/device
> > +Date:		May 2021
> > +KernelVersion:	v5.13
> > +Contact:	Hridya Valsaraju <hridya@google.com>
> > +Description:	This file is read-only and is a symlink to the attaching =
devices's
> > +		sysfs entry.
> > +
> > +What:		/sys/kernel/dmabuf/buffers/<inode_number>/attachments/<attachme=
nt_uid>/map_counter
> > +Date:		May 2021
> > +KernelVersion:	v5.13
> > +Contact:	Hridya Valsaraju <hridya@google.com>
> > +Description:	This file is read-only and contains a map_counter indicat=
ing the
> > +		number of distinct device mappings of the attachment.
> > diff --git a/drivers/dma-buf/Kconfig b/drivers/dma-buf/Kconfig
> > index 4e16c71c24b7..9561e3d2d428 100644
> > --- a/drivers/dma-buf/Kconfig
> > +++ b/drivers/dma-buf/Kconfig
> > @@ -72,6 +72,17 @@ menuconfig DMABUF_HEAPS
> >   	  allows userspace to allocate dma-bufs that can be shared
> >   	  between drivers.
> > +menuconfig DMABUF_SYSFS_STATS
> > +	bool "DMA-BUF sysfs statistics"
> > +	select DMA_SHARED_BUFFER
> > +	help
> > +	   Choose this option to enable DMA-BUF sysfs statistics
> > +	   in location /sys/kernel/dmabuf/buffers.
> > +
> > +	   /sys/kernel/dmabuf/buffers/<inode_number> will contain
> > +	   statistics for the DMA-BUF with the unique inode number
> > +	   <inode_number>.
> > +
> >   source "drivers/dma-buf/heaps/Kconfig"
> >   endmenu
> > diff --git a/drivers/dma-buf/Makefile b/drivers/dma-buf/Makefile
> > index 995e05f609ff..40d81f23cacf 100644
> > --- a/drivers/dma-buf/Makefile
> > +++ b/drivers/dma-buf/Makefile
> > @@ -6,6 +6,7 @@ obj-$(CONFIG_DMABUF_HEAPS)	+=3D heaps/
> >   obj-$(CONFIG_SYNC_FILE)		+=3D sync_file.o
> >   obj-$(CONFIG_SW_SYNC)		+=3D sw_sync.o sync_debug.o
> >   obj-$(CONFIG_UDMABUF)		+=3D udmabuf.o
> > +obj-$(CONFIG_DMABUF_SYSFS_STATS) +=3D dma-buf-sysfs-stats.o
> >   dmabuf_selftests-y :=3D \
> >   	selftest.o \
> > diff --git a/drivers/dma-buf/dma-buf-sysfs-stats.c b/drivers/dma-buf/dm=
a-buf-sysfs-stats.c
> > new file mode 100644
> > index 000000000000..45717c8108c8
> > --- /dev/null
> > +++ b/drivers/dma-buf/dma-buf-sysfs-stats.c
> > @@ -0,0 +1,300 @@
> > +// SPDX-License-Identifier: GPL-2.0-only
> > +/*
> > + * DMA-BUF sysfs statistics.
> > + *
> > + * Copyright (C) 2021 Google LLC.
> > + */
> > +
> > +#include <linux/dma-buf.h>
> > +#include <linux/dma-resv.h>
> > +#include <linux/kobject.h>
> > +#include <linux/printk.h>
> > +#include <linux/slab.h>
> > +#include <linux/sysfs.h>
> > +
> > +#include "dma-buf-sysfs-stats.h"
> > +
> > +#define to_dma_buf_entry_from_kobj(x) container_of(x, struct dma_buf_s=
ysfs_entry, kobj)
> > +
> > +struct dma_buf_stats_attribute {
> > +	struct attribute attr;
> > +	ssize_t (*show)(struct dma_buf *dmabuf,
> > +			struct dma_buf_stats_attribute *attr, char *buf);
> > +};
> > +#define to_dma_buf_stats_attr(x) container_of(x, struct dma_buf_stats_=
attribute, attr)
> > +
> > +static ssize_t dma_buf_stats_attribute_show(struct kobject *kobj,
> > +					    struct attribute *attr,
> > +					    char *buf)
> > +{
> > +	struct dma_buf_stats_attribute *attribute;
> > +	struct dma_buf_sysfs_entry *sysfs_entry;
> > +	struct dma_buf *dmabuf;
> > +
> > +	attribute =3D to_dma_buf_stats_attr(attr);
> > +	sysfs_entry =3D to_dma_buf_entry_from_kobj(kobj);
> > +	dmabuf =3D sysfs_entry->dmabuf;
> > +
> > +	if (!dmabuf || !attribute->show)
> > +		return -EIO;
> > +
> > +	return attribute->show(dmabuf, attribute, buf);
> > +}
> > +
> > +static const struct sysfs_ops dma_buf_stats_sysfs_ops =3D {
> > +	.show =3D dma_buf_stats_attribute_show,
> > +};
> > +
> > +static ssize_t exporter_name_show(struct dma_buf *dmabuf,
> > +				  struct dma_buf_stats_attribute *attr,
> > +				  char *buf)
> > +{
> > +	return sysfs_emit(buf, "%s\n", dmabuf->exp_name);
> > +}
> > +
> > +static ssize_t size_show(struct dma_buf *dmabuf,
> > +			 struct dma_buf_stats_attribute *attr,
> > +			 char *buf)
> > +{
> > +	return sysfs_emit(buf, "%zu\n", dmabuf->size);
> > +}
> > +
> > +static struct dma_buf_stats_attribute exporter_name_attribute =3D
> > +	__ATTR_RO(exporter_name);
> > +static struct dma_buf_stats_attribute size_attribute =3D __ATTR_RO(siz=
e);
> > +
> > +static struct attribute *dma_buf_stats_default_attrs[] =3D {
> > +	&exporter_name_attribute.attr,
> > +	&size_attribute.attr,
> > +	NULL,
> > +};
> > +ATTRIBUTE_GROUPS(dma_buf_stats_default);
> > +
> > +static void dma_buf_sysfs_release(struct kobject *kobj)
> > +{
> > +	struct dma_buf_sysfs_entry *sysfs_entry;
> > +
> > +	sysfs_entry =3D to_dma_buf_entry_from_kobj(kobj);
> > +	kfree(sysfs_entry);
> > +}
> > +
> > +static struct kobj_type dma_buf_ktype =3D {
> > +	.sysfs_ops =3D &dma_buf_stats_sysfs_ops,
> > +	.release =3D dma_buf_sysfs_release,
> > +	.default_groups =3D dma_buf_stats_default_groups,
> > +};
> > +
> > +#define to_dma_buf_attach_entry_from_kobj(x) container_of(x, struct dm=
a_buf_attach_sysfs_entry, kobj)
> > +
> > +struct dma_buf_attach_stats_attribute {
> > +	struct attribute attr;
> > +	ssize_t (*show)(struct dma_buf_attach_sysfs_entry *sysfs_entry,
> > +			struct dma_buf_attach_stats_attribute *attr, char *buf);
> > +};
> > +#define to_dma_buf_attach_stats_attr(x) container_of(x, struct dma_buf=
_attach_stats_attribute, attr)
> > +
> > +static ssize_t dma_buf_attach_stats_attribute_show(struct kobject *kob=
j,
> > +						   struct attribute *attr,
> > +						   char *buf)
> > +{
> > +	struct dma_buf_attach_stats_attribute *attribute;
> > +	struct dma_buf_attach_sysfs_entry *sysfs_entry;
> > +
> > +	attribute =3D to_dma_buf_attach_stats_attr(attr);
> > +	sysfs_entry =3D to_dma_buf_attach_entry_from_kobj(kobj);
> > +
> > +	if (!attribute->show)
> > +		return -EIO;
> > +
> > +	return attribute->show(sysfs_entry, attribute, buf);
> > +}
> > +
> > +static const struct sysfs_ops dma_buf_attach_stats_sysfs_ops =3D {
> > +	.show =3D dma_buf_attach_stats_attribute_show,
> > +};
> > +
> > +static ssize_t map_counter_show(struct dma_buf_attach_sysfs_entry *sys=
fs_entry,
> > +				struct dma_buf_attach_stats_attribute *attr,
> > +				char *buf)
> > +{
> > +	return sysfs_emit(buf, "%u\n", sysfs_entry->map_counter);
> > +}
> > +
> > +static struct dma_buf_attach_stats_attribute map_counter_attribute =3D
> > +	__ATTR_RO(map_counter);
> > +
> > +static struct attribute *dma_buf_attach_stats_default_attrs[] =3D {
> > +	&map_counter_attribute.attr,
> > +	NULL,
> > +};
> > +ATTRIBUTE_GROUPS(dma_buf_attach_stats_default);
> > +
> > +static void dma_buf_attach_sysfs_release(struct kobject *kobj)
> > +{
> > +	struct dma_buf_attach_sysfs_entry *sysfs_entry;
> > +
> > +	sysfs_entry =3D to_dma_buf_attach_entry_from_kobj(kobj);
> > +	kfree(sysfs_entry);
> > +}
> > +
> > +static struct kobj_type dma_buf_attach_ktype =3D {
> > +	.sysfs_ops =3D &dma_buf_attach_stats_sysfs_ops,
> > +	.release =3D dma_buf_attach_sysfs_release,
> > +	.default_groups =3D dma_buf_attach_stats_default_groups,
> > +};
> > +
> > +void dma_buf_attach_stats_teardown(struct dma_buf_attachment *attach)
> > +{
> > +	struct dma_buf_attach_sysfs_entry *sysfs_entry;
> > +
> > +	sysfs_entry =3D attach->sysfs_entry;
> > +	if (!sysfs_entry)
> > +		return;
> > +
> > +	sysfs_delete_link(&sysfs_entry->kobj, &attach->dev->kobj, "device");
> > +
> > +	kobject_del(&sysfs_entry->kobj);
> > +	kobject_put(&sysfs_entry->kobj);
> > +}
> > +
> > +int dma_buf_attach_stats_setup(struct dma_buf_attachment *attach,
> > +			       unsigned int uid)
> > +{
> > +	struct dma_buf_attach_sysfs_entry *sysfs_entry;
> > +	int ret;
> > +	struct dma_buf *dmabuf;
> > +
> > +	if (!attach)
> > +		return -EINVAL;
> > +
> > +	dmabuf =3D attach->dmabuf;
> > +
> > +	sysfs_entry =3D kzalloc(sizeof(struct dma_buf_attach_sysfs_entry),
> > +			      GFP_KERNEL);
> > +	if (!sysfs_entry)
> > +		return -ENOMEM;
> > +
> > +	sysfs_entry->kobj.kset =3D dmabuf->sysfs_entry->attach_stats_kset;
> > +
> > +	attach->sysfs_entry =3D sysfs_entry;
> > +
> > +	ret =3D kobject_init_and_add(&sysfs_entry->kobj, &dma_buf_attach_ktyp=
e,
> > +				   NULL, "%u", uid);
> > +	if (ret)
> > +		goto kobj_err;
> > +
> > +	ret =3D sysfs_create_link(&sysfs_entry->kobj, &attach->dev->kobj,
> > +				"device");
> > +	if (ret)
> > +		goto link_err;
> > +
> > +	return 0;
> > +
> > +link_err:
> > +	kobject_del(&sysfs_entry->kobj);
> > +kobj_err:
> > +	kobject_put(&sysfs_entry->kobj);
> > +	attach->sysfs_entry =3D NULL;
> > +
> > +	return ret;
> > +}
> > +void dma_buf_stats_teardown(struct dma_buf *dmabuf)
> > +{
> > +	struct dma_buf_sysfs_entry *sysfs_entry;
> > +
> > +	sysfs_entry =3D dmabuf->sysfs_entry;
> > +	if (!sysfs_entry)
> > +		return;
> > +
> > +	kset_unregister(sysfs_entry->attach_stats_kset);
> > +	kobject_del(&sysfs_entry->kobj);
> > +	kobject_put(&sysfs_entry->kobj);
> > +}
> > +
> > +
> > +/* Statistics files do not need to send uevents. */
> > +static int dmabuf_sysfs_uevent_filter(struct kset *kset, struct kobjec=
t *kobj)
> > +{
> > +	return 0;
> > +}
> > +
> > +static const struct kset_uevent_ops dmabuf_sysfs_no_uevent_ops =3D {
> > +	.filter =3D dmabuf_sysfs_uevent_filter,
> > +};
> > +
> > +static struct kset *dma_buf_stats_kset;
> > +static struct kset *dma_buf_per_buffer_stats_kset;
> > +int dma_buf_init_sysfs_statistics(void)
> > +{
> > +	dma_buf_stats_kset =3D kset_create_and_add("dmabuf",
> > +						 &dmabuf_sysfs_no_uevent_ops,
> > +						 kernel_kobj);
> > +	if (!dma_buf_stats_kset)
> > +		return -ENOMEM;
> > +
> > +	dma_buf_per_buffer_stats_kset =3D kset_create_and_add("buffers",
> > +							    &dmabuf_sysfs_no_uevent_ops,
> > +							    &dma_buf_stats_kset->kobj);
> > +	if (!dma_buf_per_buffer_stats_kset) {
> > +		kset_unregister(dma_buf_stats_kset);
> > +		return -ENOMEM;
> > +	}
> > +
> > +	return 0;
> > +}
> > +
> > +void dma_buf_uninit_sysfs_statistics(void)
> > +{
> > +	kset_unregister(dma_buf_per_buffer_stats_kset);
> > +	kset_unregister(dma_buf_stats_kset);
> > +}
> > +
> > +int dma_buf_stats_setup(struct dma_buf *dmabuf)
> > +{
> > +	struct dma_buf_sysfs_entry *sysfs_entry;
> > +	int ret;
> > +	struct kset *attach_stats_kset;
> > +
> > +	if (!dmabuf || !dmabuf->file)
> > +		return -EINVAL;
> > +
> > +	if (!dmabuf->exp_name) {
> > +		pr_err("exporter name must not be empty if stats needed\n");
> > +		return -EINVAL;
> > +	}
> > +
> > +	sysfs_entry =3D kzalloc(sizeof(struct dma_buf_sysfs_entry), GFP_KERNE=
L);
> > +	if (!sysfs_entry)
> > +		return -ENOMEM;
> > +
> > +	sysfs_entry->kobj.kset =3D dma_buf_per_buffer_stats_kset;
> > +	sysfs_entry->dmabuf =3D dmabuf;
> > +
> > +	dmabuf->sysfs_entry =3D sysfs_entry;
> > +
> > +	/* create the directory for buffer stats */
> > +	ret =3D kobject_init_and_add(&sysfs_entry->kobj, &dma_buf_ktype, NULL,
> > +				   "%lu", file_inode(dmabuf->file)->i_ino);
> > +	if (ret)
> > +		goto err_sysfs_dmabuf;
> > +
> > +	/* create the directory for attachment stats */
> > +	attach_stats_kset =3D kset_create_and_add("attachments",
> > +						&dmabuf_sysfs_no_uevent_ops,
> > +						&sysfs_entry->kobj);
> > +	if (!attach_stats_kset) {
> > +		ret =3D -ENOMEM;
> > +		goto err_sysfs_attach;
> > +	}
> > +
> > +	sysfs_entry->attach_stats_kset =3D attach_stats_kset;
> > +
> > +	return 0;
> > +
> > +err_sysfs_attach:
> > +	kobject_del(&sysfs_entry->kobj);
> > +err_sysfs_dmabuf:
> > +	kobject_put(&sysfs_entry->kobj);
> > +	dmabuf->sysfs_entry =3D NULL;
> > +	return ret;
> > +}
> > diff --git a/drivers/dma-buf/dma-buf-sysfs-stats.h b/drivers/dma-buf/dm=
a-buf-sysfs-stats.h
> > new file mode 100644
> > index 000000000000..5f4703249117
> > --- /dev/null
> > +++ b/drivers/dma-buf/dma-buf-sysfs-stats.h
> > @@ -0,0 +1,62 @@
> > +/* SPDX-License-Identifier: GPL-2.0-only */
> > +/*
> > + * DMA-BUF sysfs statistics.
> > + *
> > + * Copyright (C) 2021 Google LLC.
> > + */
> > +
> > +#ifndef _DMA_BUF_SYSFS_STATS_H
> > +#define _DMA_BUF_SYSFS_STATS_H
> > +
> > +#ifdef CONFIG_DMABUF_SYSFS_STATS
> > +
> > +int dma_buf_init_sysfs_statistics(void);
> > +void dma_buf_uninit_sysfs_statistics(void);
> > +
> > +int dma_buf_stats_setup(struct dma_buf *dmabuf);
> > +int dma_buf_attach_stats_setup(struct dma_buf_attachment *attach,
> > +			       unsigned int uid);
> > +static inline void dma_buf_update_attachment_map_count(struct dma_buf_=
attachment *attach,
> > +						       int delta)
> > +{
> > +	struct dma_buf_attach_sysfs_entry *entry =3D attach->sysfs_entry;
> > +
> > +	entry->map_counter +=3D delta;
> > +}
> > +void dma_buf_stats_teardown(struct dma_buf *dmabuf);
> > +void dma_buf_attach_stats_teardown(struct dma_buf_attachment *attach);
> > +static inline unsigned int dma_buf_update_attach_uid(struct dma_buf *d=
mabuf)
> > +{
> > +	struct dma_buf_sysfs_entry *entry =3D dmabuf->sysfs_entry;
> > +
> > +	return entry->attachment_uid++;
> > +}
> > +#else
> > +
> > +static inline int dma_buf_init_sysfs_statistics(void)
> > +{
> > +	return 0;
> > +}
> > +
> > +static inline void dma_buf_uninit_sysfs_statistics(void) {}
> > +
> > +static inline int dma_buf_stats_setup(struct dma_buf *dmabuf)
> > +{
> > +	return 0;
> > +}
> > +static inline int dma_buf_attach_stats_setup(struct dma_buf_attachment=
 *attach,
> > +					     unsigned int uid)
> > +{
> > +	return 0;
> > +}
> > +
> > +static inline void dma_buf_stats_teardown(struct dma_buf *dmabuf) {}
> > +static inline void dma_buf_attach_stats_teardown(struct dma_buf_attach=
ment *attach) {}
> > +static inline void dma_buf_update_attachment_map_count(struct dma_buf_=
attachment *attach,
> > +						       int delta) {}
> > +static inline unsigned int dma_buf_update_attach_uid(struct dma_buf *d=
mabuf)
> > +{
> > +	return 0;
> > +}
> > +#endif
> > +#endif // _DMA_BUF_SYSFS_STATS_H
> > diff --git a/drivers/dma-buf/dma-buf.c b/drivers/dma-buf/dma-buf.c
> > index f264b70c383e..184dd7acb1ed 100644
> > --- a/drivers/dma-buf/dma-buf.c
> > +++ b/drivers/dma-buf/dma-buf.c
> > @@ -29,6 +29,8 @@
> >   #include <uapi/linux/dma-buf.h>
> >   #include <uapi/linux/magic.h>
> > +#include "dma-buf-sysfs-stats.h"
> > +
> >   static inline int is_dma_buf_file(struct file *);
> >   struct dma_buf_list {
> > @@ -79,6 +81,7 @@ static void dma_buf_release(struct dentry *dentry)
> >   	if (dmabuf->resv =3D=3D (struct dma_resv *)&dmabuf[1])
> >   		dma_resv_fini(dmabuf->resv);
> > +	dma_buf_stats_teardown(dmabuf);
> >   	module_put(dmabuf->owner);
> >   	kfree(dmabuf->name);
> >   	kfree(dmabuf);
> > @@ -580,6 +583,10 @@ struct dma_buf *dma_buf_export(const struct dma_bu=
f_export_info *exp_info)
> >   	file->f_mode |=3D FMODE_LSEEK;
> >   	dmabuf->file =3D file;
> > +	ret =3D dma_buf_stats_setup(dmabuf);
> > +	if (ret)
> > +		goto err_sysfs;
> > +
> >   	mutex_init(&dmabuf->lock);
> >   	INIT_LIST_HEAD(&dmabuf->attachments);
> > @@ -589,6 +596,14 @@ struct dma_buf *dma_buf_export(const struct dma_bu=
f_export_info *exp_info)
> >   	return dmabuf;
> > +err_sysfs:
> > +	/*
> > +	 * Set file->f_path.dentry->d_fsdata to NULL so that when
> > +	 * dma_buf_release() gets invoked by dentry_ops, it exits
> > +	 * early before calling the release() dma_buf op.
> > +	 */
> > +	file->f_path.dentry->d_fsdata =3D NULL;
> > +	fput(file);
> >   err_dmabuf:
> >   	kfree(dmabuf);
> >   err_module:
> > @@ -723,6 +738,7 @@ dma_buf_dynamic_attach(struct dma_buf *dmabuf, stru=
ct device *dev,
> >   {
> >   	struct dma_buf_attachment *attach;
> >   	int ret;
> > +	unsigned int attach_uid;
> >   	if (WARN_ON(!dmabuf || !dev))
> >   		return ERR_PTR(-EINVAL);
> > @@ -748,8 +764,13 @@ dma_buf_dynamic_attach(struct dma_buf *dmabuf, str=
uct device *dev,
> >   	}
> >   	dma_resv_lock(dmabuf->resv, NULL);
> >   	list_add(&attach->node, &dmabuf->attachments);
> > +	attach_uid =3D dma_buf_update_attach_uid(dmabuf);
> >   	dma_resv_unlock(dmabuf->resv);
> > +	ret =3D dma_buf_attach_stats_setup(attach, attach_uid);
> > +	if (ret)
> > +		goto err_sysfs;
> > +
> >   	/* When either the importer or the exporter can't handle dynamic
> >   	 * mappings we cache the mapping here to avoid issues with the
> >   	 * reservation object lock.
> > @@ -776,6 +797,7 @@ dma_buf_dynamic_attach(struct dma_buf *dmabuf, stru=
ct device *dev,
> >   			dma_resv_unlock(attach->dmabuf->resv);
> >   		attach->sgt =3D sgt;
> >   		attach->dir =3D DMA_BIDIRECTIONAL;
> > +		dma_buf_update_attachment_map_count(attach, 1 /* delta */);
> >   	}
> >   	return attach;
> > @@ -792,6 +814,7 @@ dma_buf_dynamic_attach(struct dma_buf *dmabuf, stru=
ct device *dev,
> >   	if (dma_buf_is_dynamic(attach->dmabuf))
> >   		dma_resv_unlock(attach->dmabuf->resv);
> > +err_sysfs:
> >   	dma_buf_detach(dmabuf, attach);
> >   	return ERR_PTR(ret);
> >   }
> > @@ -841,6 +864,7 @@ void dma_buf_detach(struct dma_buf *dmabuf, struct =
dma_buf_attachment *attach)
> >   			dma_resv_lock(attach->dmabuf->resv, NULL);
> >   		__unmap_dma_buf(attach, attach->sgt, attach->dir);
> > +		dma_buf_update_attachment_map_count(attach, -1 /* delta */);
> >   		if (dma_buf_is_dynamic(attach->dmabuf)) {
> >   			dma_buf_unpin(attach);
> > @@ -854,6 +878,7 @@ void dma_buf_detach(struct dma_buf *dmabuf, struct =
dma_buf_attachment *attach)
> >   	if (dmabuf->ops->detach)
> >   		dmabuf->ops->detach(dmabuf, attach);
> > +	dma_buf_attach_stats_teardown(attach);
> >   	kfree(attach);
> >   }
> >   EXPORT_SYMBOL_GPL(dma_buf_detach);
> > @@ -993,6 +1018,9 @@ struct sg_table *dma_buf_map_attachment(struct dma=
_buf_attachment *attach,
> >   	}
> >   #endif /* CONFIG_DMA_API_DEBUG */
> > +	if (!IS_ERR(sg_table))
> > +		dma_buf_update_attachment_map_count(attach, 1 /* delta */);
> > +
> >   	return sg_table;
> >   }
> >   EXPORT_SYMBOL_GPL(dma_buf_map_attachment);
> > @@ -1030,6 +1058,8 @@ void dma_buf_unmap_attachment(struct dma_buf_atta=
chment *attach,
> >   	if (dma_buf_is_dynamic(attach->dmabuf) &&
> >   	    !IS_ENABLED(CONFIG_DMABUF_MOVE_NOTIFY))
> >   		dma_buf_unpin(attach);
> > +
> > +	dma_buf_update_attachment_map_count(attach, -1 /* delta */);
> >   }
> >   EXPORT_SYMBOL_GPL(dma_buf_unmap_attachment);
> > @@ -1480,6 +1510,12 @@ static inline void dma_buf_uninit_debugfs(void)
> >   static int __init dma_buf_init(void)
> >   {
> > +	int ret;
> > +
> > +	ret =3D dma_buf_init_sysfs_statistics();
> > +	if (ret)
> > +		return ret;
> > +
> >   	dma_buf_mnt =3D kern_mount(&dma_buf_fs_type);
> >   	if (IS_ERR(dma_buf_mnt))
> >   		return PTR_ERR(dma_buf_mnt);
> > @@ -1495,5 +1531,6 @@ static void __exit dma_buf_deinit(void)
> >   {
> >   	dma_buf_uninit_debugfs();
> >   	kern_unmount(dma_buf_mnt);
> > +	dma_buf_uninit_sysfs_statistics();
> >   }
> >   __exitcall(dma_buf_deinit);
> > diff --git a/include/linux/dma-buf.h b/include/linux/dma-buf.h
> > index efdc56b9d95f..342585bd6dff 100644
> > --- a/include/linux/dma-buf.h
> > +++ b/include/linux/dma-buf.h
> > @@ -295,6 +295,9 @@ struct dma_buf_ops {
> >    * @poll: for userspace poll support
> >    * @cb_excl: for userspace poll support
> >    * @cb_shared: for userspace poll support
> > + * @sysfs_entry: for exposing information about this buffer in sysfs.
> > + * The attachment_uid member of @sysfs_entry is protected by dma_resv =
lock
> > + * and is incremented on each attach.
> >    *
> >    * This represents a shared buffer, created by calling dma_buf_export=
(). The
> >    * userspace representation is a normal file descriptor, which can be=
 created by
> > @@ -330,6 +333,15 @@ struct dma_buf {
> >   		__poll_t active;
> >   	} cb_excl, cb_shared;
> > +#ifdef CONFIG_DMABUF_SYSFS_STATS
> > +	/* for sysfs stats */
> > +	struct dma_buf_sysfs_entry {
> > +		struct kobject kobj;
> > +		struct dma_buf *dmabuf;
> > +		unsigned int attachment_uid;
> > +		struct kset *attach_stats_kset;
> > +	} *sysfs_entry;
> > +#endif
> >   };
> >   /**
> > @@ -379,6 +391,7 @@ struct dma_buf_attach_ops {
> >    * @importer_ops: importer operations for this attachment, if provided
> >    * dma_buf_map/unmap_attachment() must be called with the dma_resv lo=
ck held.
> >    * @importer_priv: importer specific attachment data.
> > + * @sysfs_entry: For exposing information about this attachment in sys=
fs.
> >    *
> >    * This structure holds the attachment information between the dma_bu=
f buffer
> >    * and its user device(s). The list contains one attachment struct pe=
r device
> > @@ -399,6 +412,13 @@ struct dma_buf_attachment {
> >   	const struct dma_buf_attach_ops *importer_ops;
> >   	void *importer_priv;
> >   	void *priv;
> > +#ifdef CONFIG_DMABUF_SYSFS_STATS
> > +	/* for sysfs stats */
> > +	struct dma_buf_attach_sysfs_entry {
> > +		struct kobject kobj;
> > +		unsigned int map_counter;
> > +	} *sysfs_entry;
> > +#endif
> >   };
> >   /**
> =


-- =

Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
