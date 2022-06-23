Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id DB177558B0F
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Jun 2022 00:06:29 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B559D3F467
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 23 Jun 2022 22:06:28 +0000 (UTC)
Received: from mail-pf1-f201.google.com (mail-pf1-f201.google.com [209.85.210.201])
	by lists.linaro.org (Postfix) with ESMTPS id 6E28C3ECC8
	for <linaro-mm-sig@lists.linaro.org>; Thu, 23 Jun 2022 22:06:24 +0000 (UTC)
Received: by mail-pf1-f201.google.com with SMTP id 189-20020a6216c6000000b005252417051fso364361pfw.8
        for <linaro-mm-sig@lists.linaro.org>; Thu, 23 Jun 2022 15:06:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=date:message-id:mime-version:subject:from:to:cc;
        bh=KwqDl7Ku0++kd3bGbvwgzs1gT1laIcj9GIfwKObRL9E=;
        b=f8U/4xKGanNwrOdn737tuWhSmnZoG61m1qxfjiv5VkQ8UPtSqaWeibB404rrX79rJX
         Sr8EwtDegZkmDOiQT1PYLi73vlNuyK3MEO3CteMf7qrTyzJdkDqEDsqiRCNCHSPQ5OpW
         eesWhWqiGdmVom/8h4KWFRd14AnohMl03xMmbV6Ab1oeKOXQCzTP9OQoqz1l8U2F6/ec
         VlqIw1iK8+IqtbCAOHrXtiW4tOefdgMl+CoajfkyUTpBuZ8kM+4EuI/xDArQ35ySZCKy
         wRv8WwozJNFIjWw3i7yzruaQIY9s/ub55YNu2bl9iMISFr3cyMkNMY6hYWwYFcZJ8fYO
         pNYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
        bh=KwqDl7Ku0++kd3bGbvwgzs1gT1laIcj9GIfwKObRL9E=;
        b=6yi3+LOdQTJr++jNR3bbOcbvAkY8JYUCvhhu+Q1Imbh4RoGHutkQeAe/iIvVvjAxjk
         olo9J0FaXE2xtsE1gpDHbE5Qspu6h7z8GqF9aD/lYm4rndorIgZFRPBXFe1zpBQkyn9Y
         QttztRw/m+1gcl1/FY+CtBUjumnIWuq8wY7O8gjTJQvGBQkvKpYpwMtgp0uXOIaOPQpe
         lFVJmSrw4xlC37pWCuL1tbX6A1NoUvmwkSrrs8pRXjVDM9tuTeoeWKmYza5rpTot1wdY
         adzl748JuO6rMUXTEiZT9qodcobbQ0VWlYdKvIW1WS1IeV1MoZnaZBgp9ToTYwhejeIN
         uIeA==
X-Gm-Message-State: AJIora+rGC2tVq48rUxaW+i9MzmB3mm294t9NF9yx3B2ck/lcmzBtQQu
	FA1ClRNTigs9fpscLXJuHm42DRt7oXKa2Rlrrw==
X-Google-Smtp-Source: AGRyM1sO9ieUDBnlX+/hb6X4MjMKGW7axAjbZt6eLMihv8A9ry56mIpW47+iL+E9JFdzcNk6h+YievpjxofEabG5Zw==
X-Received: from kaleshsingh.mtv.corp.google.com ([2620:15c:211:200:ac62:20a7:e3c5:c221])
 (user=kaleshsingh job=sendgmr) by 2002:a05:6a00:885:b0:510:950f:f787 with
 SMTP id q5-20020a056a00088500b00510950ff787mr42464806pfj.83.1656021983532;
 Thu, 23 Jun 2022 15:06:23 -0700 (PDT)
Date: Thu, 23 Jun 2022 15:06:05 -0700
Message-Id: <20220623220613.3014268-1-kaleshsingh@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.37.0.rc0.161.g10f37bed90-goog
From: Kalesh Singh <kaleshsingh@google.com>
To: ckoenig.leichtzumerken@gmail.com, christian.koenig@amd.com,
	viro@zeniv.linux.org.uk, hch@infradead.org, stephen.s.brennan@oracle.com,
	David.Laight@ACULAB.COM
Message-ID-Hash: ZQA4LT3NVPXLVRGCBCGNWTJS63QOBJGV
X-Message-ID-Hash: ZQA4LT3NVPXLVRGCBCGNWTJS63QOBJGV
X-MailFrom: 33-O0YgsKDZYA0B4I7I8D676EE6B4.2ECB8D0HE-CC-I86B8IJI.B8D0HE.EH6@flex--kaleshsingh.bounces.google.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: ilkos@google.com, tjmercier@google.com, surenb@google.com, kernel-team@android.com, Kalesh Singh <kaleshsingh@google.com>, Jonathan Corbet <corbet@lwn.net>, Sumit Semwal <sumit.semwal@linaro.org>, Andrew Morton <akpm@linux-foundation.org>, Christoph Anton Mitterer <mail@christoph.anton.mitterer.name>, Johannes Weiner <hannes@cmpxchg.org>, Mike Rapoport <rppt@kernel.org>, Colin Cross <ccross@google.com>, Paul Gortmaker <paul.gortmaker@windriver.com>, Randy Dunlap <rdunlap@infradead.org>, linux-kernel@vger.kernel.org, linux-fsdevel@vger.kernel.org, linux-doc@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v2 0/2] procfs: Add file path and size to /proc/<pid>/fdinfo
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZQA4LT3NVPXLVRGCBCGNWTJS63QOBJGV/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi all,

This is v2 of the fdinfo patches. The main update is adding path
field only for files with anon inodes. Rebased on 5.19-rc3.

The previous cover letter is copied below for convenience.

Thanks,
Kalesh

-----------

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


Kalesh Singh (2):
  procfs: Add 'size' to /proc/<pid>/fdinfo/
  procfs: Add 'path' to /proc/<pid>/fdinfo/

 Documentation/filesystems/proc.rst | 22 ++++++++++++++++++++--
 drivers/dma-buf/dma-buf.c          |  1 -
 fs/libfs.c                         |  9 +++++++++
 fs/proc/fd.c                       | 18 ++++++++++++++----
 include/linux/fs.h                 |  1 +
 5 files changed, 44 insertions(+), 7 deletions(-)


base-commit: a111daf0c53ae91e71fd2bfe7497862d14132e3e
-- 
2.37.0.rc0.161.g10f37bed90-goog

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
