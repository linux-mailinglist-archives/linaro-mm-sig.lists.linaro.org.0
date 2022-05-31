Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id A699953997E
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  1 Jun 2022 00:30:31 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B435E3F2CC
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 31 May 2022 22:30:30 +0000 (UTC)
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	by lists.linaro.org (Postfix) with ESMTPS id 851FA3EC75
	for <linaro-mm-sig@lists.linaro.org>; Tue, 31 May 2022 22:30:26 +0000 (UTC)
Received: by mail-wm1-f53.google.com with SMTP id p19so9124wmg.2
        for <linaro-mm-sig@lists.linaro.org>; Tue, 31 May 2022 15:30:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=SEu3gHBtY6LLTOMN3MmTdHskW6p1TLc/vNEFmAzpufM=;
        b=Z/vr9xTfUXH4PiY9DvzHip/pwNhMr9h68esOIlIO56GV4apnXgFyOZ4UUCWBHKFYZ7
         bSlO6x88S/K07DYuXkhEDgxkak3mbCuynYvmAvAXkkyu9RUknWNtE/ln6j2mrNyLuTc5
         y2kXWbMYjjOt+3x4sRE1U/gdB5r5O5Tfo14sEXjhUruqZuTEWkC4yAUCH3NE/pXzFUPw
         fcm8OZUg5G1rNEGvLnnU212WcSUCBkBl8R2z71Jf6L3TOaXmoObbqn+VpxmBdRFwyFh3
         8+oZxQh7463u1FSg/43DMFwRTz9sD8ddsOzS8PXnl1bbUa8T5cgUAub2gGrw3E4Ub6pl
         LfiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=SEu3gHBtY6LLTOMN3MmTdHskW6p1TLc/vNEFmAzpufM=;
        b=BcQ3NBO8ZG5klfo8PQHz6pPh3UvQvBaVAf3QS2dXSSVlYJwi7ea0bPvEWk4lOmo7zS
         IViwPwOpPD03Re1FEpS7gm2naO0aqeQ61jazZbumWXo1WjgtUWZrTCBti5pde03E1O58
         SOPGVEeFKOChnMmlkmyo8YRBZWA5ZtjXr1FmTzl4uzgGBX4zTPc6SjVUXuuavmJjUUzb
         I1+iB1saPSRAgL4h5szOgYIO4A+bnJ4HAtJv1tC2vMMGD30T9E9c8dI9wy2Pu9TEVpiv
         ZgnFm51yGTCgsW9MQjpBN5hu4A38eNfJwMej/zbK+gTDseEbRTeH7Bt7aOJy4N5CAIF0
         2nHg==
X-Gm-Message-State: AOAM530HGHf7+wvdw05g7XSI5n8HuZAHz7k+aM98HjGSAlJV0Gkpfdon
	Bjm1DxYBnY8KOU4DAGu2kgWB1Kga4e7Bsq8OAZrcdw==
X-Google-Smtp-Source: ABdhPJxFW3EN2npyN6sNyZol7XaWaELo+D3IYfrKRqzNhGnITUwP8Auj/XlGTdtQdX23iRAndR1ltYZz0vpFCwYSIZg=
X-Received: by 2002:a05:600c:4f90:b0:394:970a:71bd with SMTP id
 n16-20020a05600c4f9000b00394970a71bdmr26110197wmq.158.1654036225336; Tue, 31
 May 2022 15:30:25 -0700 (PDT)
MIME-Version: 1.0
References: <20220531212521.1231133-1-kaleshsingh@google.com>
 <20220531212521.1231133-3-kaleshsingh@google.com> <14f85d24-a9de-9706-32f0-30be4999c71c@oracle.com>
In-Reply-To: <14f85d24-a9de-9706-32f0-30be4999c71c@oracle.com>
From: Kalesh Singh <kaleshsingh@google.com>
Date: Tue, 31 May 2022 15:30:14 -0700
Message-ID: <CAC_TJveDzDaYQKmuLSkGWpnuCW+gvrqdVJqq=wbzoTRjw4OoFw@mail.gmail.com>
To: Stephen Brennan <stephen.s.brennan@oracle.com>
Message-ID-Hash: GJ54OVII6JBCPFWAUCRPFPORM3QM6IMC
X-Message-ID-Hash: GJ54OVII6JBCPFWAUCRPFPORM3QM6IMC
X-MailFrom: kaleshsingh@google.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Ioannis Ilkos <ilkos@google.com>, "T.J. Mercier" <tjmercier@google.com>, Suren Baghdasaryan <surenb@google.com>, "Cc: Android Kernel" <kernel-team@android.com>, Jonathan Corbet <corbet@lwn.net>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Andrew Morton <akpm@linux-foundation.org>, David Hildenbrand <david@redhat.com>, Christoph Anton Mitterer <mail@christoph.anton.mitterer.name>, Johannes Weiner <hannes@cmpxchg.org>, Colin Cross <ccross@google.com>, Mike Rapoport <rppt@kernel.org>, Paul Gortmaker <paul.gortmaker@windriver.com>, Randy Dunlap <rdunlap@infradead.org>, LKML <linux-kernel@vger.kernel.org>, linux-fsdevel <linux-fsdevel@vger.kernel.org>, "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>, Linux Media Mailing List <linux-media@vger.kernel.org>, DRI mailing list <dri-devel@lists.freedesktop.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 2/2] procfs: Add 'path' to /proc/<pid>/fdinfo/
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/GJ54OVII6JBCPFWAUCRPFPORM3QM6IMC/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, May 31, 2022 at 3:07 PM Stephen Brennan
<stephen.s.brennan@oracle.com> wrote:
>
> On 5/31/22 14:25, Kalesh Singh wrote:
> > In order to identify the type of memory a process has pinned through
> > its open fds, add the file path to fdinfo output. This allows
> > identifying memory types based on common prefixes. e.g. "/memfd...",
> > "/dmabuf...", "/dev/ashmem...".
> >
> > Access to /proc/<pid>/fdinfo is governed by PTRACE_MODE_READ_FSCREDS
> > the same as /proc/<pid>/maps which also exposes the file path of
> > mappings; so the security permissions for accessing path is consistent
> > with that of /proc/<pid>/maps.
>
> Hi Kalesh,

Hi Stephen,

Thanks for taking a look.

>
> I think I see the value in the size field, but I'm curious about path,
> which is available via readlink /proc/<pid>/fd/<n>, since those are
> symlinks to the file themselves.

This could work if we are root, but the file permissions wouldn't
allow us to do the readlink on other processes otherwise. We want to
be able to capture the system state in production environments from
some trusted process with ptrace read capability.

>
> File paths can contain fun characters like newlines or colons, which
> could make parsing out filenames in this text file... fun. How would your
> userspace parsing logic handle "/home/stephen/filename\nsize:\t4096"? The
> readlink(2) API makes that easy already.

I think since we have escaped the "\n" (seq_file_path(m, file, "\n")),
then user space might parse this line like:

if (strncmp(line, "path:\t", 6) == 0)
        char* path = line + 6;


Thanks,
Kalesh

>
> Is the goal avoiding races (e.g. file descriptor 3 is closed and reopened
> to a different path between reading fdinfo and stating the fd)?
>
> Stephen
>
> > Signed-off-by: Kalesh Singh <kaleshsingh@google.com>
> > ---
> >
> > Changes from rfc:
> >   - Split adding 'size' and 'path' into a separate patches, per Christian
> >   - Fix indentation (use tabs) in documentaion, per Randy
> >
> >  Documentation/filesystems/proc.rst | 14 ++++++++++++--
> >  fs/proc/fd.c                       |  4 ++++
> >  2 files changed, 16 insertions(+), 2 deletions(-)
> >
> > diff --git a/Documentation/filesystems/proc.rst b/Documentation/filesystems/proc.rst
> > index 779c05528e87..591f12d30d97 100644
> > --- a/Documentation/filesystems/proc.rst
> > +++ b/Documentation/filesystems/proc.rst
> > @@ -1886,14 +1886,16 @@ if precise results are needed.
> >  3.8  /proc/<pid>/fdinfo/<fd> - Information about opened file
> >  ---------------------------------------------------------------
> >  This file provides information associated with an opened file. The regular
> > -files have at least five fields -- 'pos', 'flags', 'mnt_id', 'ino', and 'size'.
> > +files have at least six fields -- 'pos', 'flags', 'mnt_id', 'ino', 'size',
> > +and 'path'.
> >
> >  The 'pos' represents the current offset of the opened file in decimal
> >  form [see lseek(2) for details], 'flags' denotes the octal O_xxx mask the
> >  file has been created with [see open(2) for details] and 'mnt_id' represents
> >  mount ID of the file system containing the opened file [see 3.5
> >  /proc/<pid>/mountinfo for details]. 'ino' represents the inode number of
> > -the file, and 'size' represents the size of the file in bytes.
> > +the file, 'size' represents the size of the file in bytes, and 'path'
> > +represents the file path.
> >
> >  A typical output is::
> >
> > @@ -1902,6 +1904,7 @@ A typical output is::
> >       mnt_id: 19
> >       ino:    63107
> >       size:   0
> > +     path:   /dev/null
> >
> >  All locks associated with a file descriptor are shown in its fdinfo too::
> >
> > @@ -1920,6 +1923,7 @@ Eventfd files
> >       mnt_id: 9
> >       ino:    63107
> >       size:   0
> > +     path:   anon_inode:[eventfd]
> >       eventfd-count:  5a
> >
> >  where 'eventfd-count' is hex value of a counter.
> > @@ -1934,6 +1938,7 @@ Signalfd files
> >       mnt_id: 9
> >       ino:    63107
> >       size:   0
> > +     path:   anon_inode:[signalfd]
> >       sigmask:        0000000000000200
> >
> >  where 'sigmask' is hex value of the signal mask associated
> > @@ -1949,6 +1954,7 @@ Epoll files
> >       mnt_id: 9
> >       ino:    63107
> >       size:   0
> > +     path:   anon_inode:[eventpoll]
> >       tfd:        5 events:       1d data: ffffffffffffffff pos:0 ino:61af sdev:7
> >
> >  where 'tfd' is a target file descriptor number in decimal form,
> > @@ -1968,6 +1974,7 @@ For inotify files the format is the following::
> >       mnt_id: 9
> >       ino:    63107
> >       size:   0
> > +     path:   anon_inode:inotify
> >       inotify wd:3 ino:9e7e sdev:800013 mask:800afce ignored_mask:0 fhandle-bytes:8 fhandle-type:1 f_handle:7e9e0000640d1b6d
> >
> >  where 'wd' is a watch descriptor in decimal form, i.e. a target file
> > @@ -1992,6 +1999,7 @@ For fanotify files the format is::
> >       mnt_id: 9
> >       ino:    63107
> >       size:   0
> > +     path:   anon_inode:[fanotify]
> >       fanotify flags:10 event-flags:0
> >       fanotify mnt_id:12 mflags:40 mask:38 ignored_mask:40000003
> >       fanotify ino:4f969 sdev:800013 mflags:0 mask:3b ignored_mask:40000000 fhandle-bytes:8 fhandle-type:1 f_handle:69f90400c275b5b4
> > @@ -2018,6 +2026,7 @@ Timerfd files
> >       mnt_id: 9
> >       ino:    63107
> >       size:   0
> > +     path:   anon_inode:[timerfd]
> >       clockid: 0
> >       ticks: 0
> >       settime flags: 01
> > @@ -2042,6 +2051,7 @@ DMA Buffer files
> >       mnt_id: 9
> >       ino:    63107
> >       size:   32768
> > +     path:   /dmabuf:
> >       count:  2
> >       exp_name:  system-heap
> >
> > diff --git a/fs/proc/fd.c b/fs/proc/fd.c
> > index 464bc3f55759..8889a8ba09d4 100644
> > --- a/fs/proc/fd.c
> > +++ b/fs/proc/fd.c
> > @@ -60,6 +60,10 @@ static int seq_show(struct seq_file *m, void *v)
> >       seq_printf(m, "ino:\t%lu\n", file_inode(file)->i_ino);
> >       seq_printf(m, "size:\t%lli\n", (long long)file_inode(file)->i_size);
> >
> > +     seq_puts(m, "path:\t");
> > +     seq_file_path(m, file, "\n");
> > +     seq_putc(m, '\n');
> > +
> >       /* show_fd_locks() never deferences files so a stale value is safe */
> >       show_fd_locks(m, file, files);
> >       if (seq_has_overflowed(m))
>
> --
> To unsubscribe from this group and stop receiving emails from it, send an email to kernel-team+unsubscribe@android.com.
>
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
