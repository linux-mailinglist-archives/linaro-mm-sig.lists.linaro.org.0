Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 1790E5398AB
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 31 May 2022 23:25:34 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B683A3EDB1
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 31 May 2022 21:25:32 +0000 (UTC)
Received: from mail-yb1-f202.google.com (mail-yb1-f202.google.com [209.85.219.202])
	by lists.linaro.org (Postfix) with ESMTPS id 2C3693ED9F
	for <linaro-mm-sig@lists.linaro.org>; Tue, 31 May 2022 21:25:28 +0000 (UTC)
Received: by mail-yb1-f202.google.com with SMTP id z67-20020a254c46000000b0065cd3d2e67eso5523722yba.7
        for <linaro-mm-sig@lists.linaro.org>; Tue, 31 May 2022 14:25:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=date:message-id:mime-version:subject:from:cc;
        bh=L5daPTOP8huWXGF9zZZ/YOQgC5+YhUKYKEYEGgJKuXI=;
        b=ni+vDj4JsvkDI6uQO/dBS970cz6dZc8DyFe2Zer4xTkNxkSHvK+9iWBnPWmPFlu+yM
         GldK8tXmwDcVnPqD5rTmrw1O/5Fx84SqlvyYy1O+NdSXpTGCmxmOP42PbCZEsmapK/pI
         LdPWt3eWdMCmmsdUAyhxzJwSk4K/f3XFD8JLMQDfFMKoV7yl3wD7c0YEyQZkVTKpKRls
         bQIXSiUx6bvVEbfIXw2C31CtGBGyRZKnhhZI0oqDXke/z5Cd5Z5SAktEbZN0415/W9kX
         oeGofIRzd3K6V4+k9c5ZaCl6y2CNVM4tUzcRZzthBuZX0q0DdV2YxdbJ4DLgGVowVllW
         //UA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:cc;
        bh=L5daPTOP8huWXGF9zZZ/YOQgC5+YhUKYKEYEGgJKuXI=;
        b=wFKm+u/v1gZuawdZJ6jKm+xImiViytVhrxQM5n8BJ+YrgCESIA7PCZ55fJJK6bEeHm
         neoCWX5koajiwZNCEhh69fEFrtvkIIcTlqlI2cO7iBCH6yukj8n3mmVqcbzeE/0qMZvl
         eXumes3T9QpCf7htOuVbns8goAEhMwMIqiT7b3mSaQBDYktcxJYlCoiv+2TTsFD5Iad8
         AbDfV2Urs8iqAaHzLkx+dHAQCFeocaqaPuObq9jB5vgCg/ZlDTVGDm73P7jt38gRQHLV
         aPF3SVmyLd64rxPtgm9nIOSJMTnx87HbUF/aS5k5pmrfn1PgWfeV8VJ5fidOx7v+NmA+
         Usfg==
X-Gm-Message-State: AOAM532a4zso8dLCQe5M93s210ZNp5lUDftkkbnekWYHnT3DCP6/GWbD
	KsbcKeN+z0idj0MYlvzS7RUE9zq4yWZZsojw2Q==
X-Google-Smtp-Source: ABdhPJxWIiQFRYynwXQQYY0IBjtnA6j7FHVKcbmfGUIrmeVszzJonKHXPDCnsP8F5SOq9IOCJF3wUkeCrypYAVu4VA==
X-Received: from kaleshsingh.mtv.corp.google.com ([2620:15c:211:200:a3c0:2a66:b25c:16df])
 (user=kaleshsingh job=sendgmr) by 2002:a25:6588:0:b0:65d:57b9:c470 with SMTP
 id z130-20020a256588000000b0065d57b9c470mr4071204ybb.142.1654032327734; Tue,
 31 May 2022 14:25:27 -0700 (PDT)
Date: Tue, 31 May 2022 14:25:13 -0700
Message-Id: <20220531212521.1231133-1-kaleshsingh@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.36.1.255.ge46751e96f-goog
From: Kalesh Singh <kaleshsingh@google.com>
Message-ID-Hash: IOR5GRPYEGQCXK6U5OY7IJLZQLICPSPE
X-Message-ID-Hash: IOR5GRPYEGQCXK6U5OY7IJLZQLICPSPE
X-MailFrom: 3x4eWYgsKDUwyozs6v6w1uvu22uzs.q20zw1o52-00-6wuzw676.zw1o52.25u@flex--kaleshsingh.bounces.google.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: ilkos@google.com, tjmercier@google.com, surenb@google.com, kernel-team@android.com, Kalesh Singh <kaleshsingh@google.com>, Jonathan Corbet <corbet@lwn.net>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Andrew Morton <akpm@linux-foundation.org>, Johannes Weiner <hannes@cmpxchg.org>, David Hildenbrand <david@redhat.com>, Christoph Anton Mitterer <mail@christoph.anton.mitterer.name>, Mike Rapoport <rppt@kernel.org>, Paul Gortmaker <paul.gortmaker@windriver.com>, Randy Dunlap <rdunlap@infradead.org>, linux-kernel@vger.kernel.org, linux-fsdevel@vger.kernel.org, linux-doc@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 0/2] procfs: Add file path and size to /proc/<pid>/fdinfo
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/IOR5GRPYEGQCXK6U5OY7IJLZQLICPSPE/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Processes can pin shared memory by keeping a handle to it through a
file descriptor; for instance dmabufs, memfd, and ashmem (in Android).

In the case of a memory leak, to identify the process pinning the
memory, userspace needs to:
  - Iterate the /proc/<pid>/fd/* for each process
  - Do a readlink on each entry to identify the type of memory from
    the file path.
  - stat() each entry to get the size of the memory.

The file permissions on /proc/<pid>/fd/* only allows for the owner
or root to perform the operations above; and so is not suitable for
capturing the system-wide state in a production environment.

This issue was addressed for dmabufs by making /proc/*/fdinfo/*
accessible to a process with PTRACE_MODE_READ_FSCREDS credentials[1]
To allow the same kind of tracking for other types of shared memory,
add the following fields to /proc/<pid>/fdinfo/<fd>:

path - This allows identifying the type of memory based on common
       prefixes: e.g. "/memfd...", "/dmabuf...", "/dev/ashmem..."

       This was not an issued when dmabuf tracking was introduced
       because the exp_name field of dmabuf fdinfo could be used
       to distinguish dmabuf fds from other types.

size - To track the amount of memory that is being pinned.

       dmabufs expose size as an additional field in fdinfo. Remove
       this and make it a common field for all fds.

Access to /proc/<pid>/fdinfo is governed by PTRACE_MODE_READ_FSCREDS
-- the same as for /proc/<pid>/maps which also exposes the path and
size for mapped memory regions.

This allows for a system process with PTRACE_MODE_READ_FSCREDS to
account the pinned per-process memory via fdinfo.

-----

There was some concern about exposing the file path in the RFC[2], to that
effect the change was split into separte patches. Also retrieving the file
path from fdinfo is guarded by the same capability (PTRACE_MODE_READ) as
/proc/<pid>/maps which also exposes file path, so this may not be an issue.

[1] https://lore.kernel.org/r/20210308170651.919148-1-kaleshsingh@google.com/
[2] https://lore.kernel.org/r/20220519214021.3572840-1-kaleshsingh@google.com/


Kalesh Singh (2):
  procfs: Add 'size' to /proc/<pid>/fdinfo/
  procfs: Add 'path' to /proc/<pid>/fdinfo/

 Documentation/filesystems/proc.rst | 22 ++++++++++++++++++++--
 drivers/dma-buf/dma-buf.c          |  1 -
 fs/proc/fd.c                       | 13 +++++++++----
 3 files changed, 29 insertions(+), 7 deletions(-)


base-commit: 8ab2afa23bd197df47819a87f0265c0ac95c5b6a
-- 
2.36.1.255.ge46751e96f-goog

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
