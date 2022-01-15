Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E63C4B63FB
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Feb 2022 08:10:06 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BF835401DE
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Feb 2022 07:10:05 +0000 (UTC)
Received: from mail-yb1-f202.google.com (mail-yb1-f202.google.com [209.85.219.202])
	by lists.linaro.org (Postfix) with ESMTPS id 527223EBB6
	for <linaro-mm-sig@lists.linaro.org>; Sat, 15 Jan 2022 01:06:55 +0000 (UTC)
Received: by mail-yb1-f202.google.com with SMTP id f12-20020a056902038c00b006116df1190aso21562659ybs.20
        for <linaro-mm-sig@lists.linaro.org>; Fri, 14 Jan 2022 17:06:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=date:message-id:mime-version:subject:from:to:cc;
        bh=wG/PbGVmKjgf1eOd11ftVQTDqJEywAnSirRvk8YQoEA=;
        b=ra40WJSnTd+Sg9D3TIvHREEZJO5QmFxwXzwakhy95Pj15AdCn96Rg7F+gGkzzdoPHL
         /LCXltr47kWOGGC4J/j+jKdN7xu6RyW7gUeuH5vavWrndAu7BzKurEIyahiOS6sTnazd
         kjhutzh5GjtqfNnBjsMi1N1OKm+eTNmejUCgViGcOUkB/EFui5twnu1ZKaXi21WPA1C7
         hDv3dAKWpj1mixAwX1dUro0zgPo6Npzf7sXOSvaZIstusYMToZmeNzSzidVL3FAMroY6
         HrShrnaUArO3g2alaInh2tQWQ8dpEbE6FBLnde1xIXMV4W2bjw4NgeUFBmdKReIihG44
         DGmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
        bh=wG/PbGVmKjgf1eOd11ftVQTDqJEywAnSirRvk8YQoEA=;
        b=shAqJH6M5yKcCusI6mflN+UrNgSZ5vWcshj28OzqPyyrCGSYVAMDIIJlVWiQalLpK5
         h9Fczd65lRptlb5LveQAB6zVYQMjaZK3oWUw6iLMAKWNCvRMpRy4L63zMX+nhMgO+lo3
         6PmhuQnoAtHk1jaf7Iy+wJ+Dg9um5hqsb76MawEc0+5Yp70VyHYopCJ13OqBXs9bKXk0
         graWJ2xK8BU5wkalFl6L8rbkujBx9ri4WhU4ER0dgnMSwy3F4xlAjCeRUrobN10XIwPl
         vUTLnDuuhLSJfFAvtXg58sRDZbATo0BmFs4N7CyyPFqCQtrpcQnkxVSNuB+INaORPcxo
         6IjQ==
X-Gm-Message-State: AOAM5336Rz8FqUseQz7O+EvbkMO5cMeFXnkDX239o94dRLM/ycYE5h+v
	ivALTVnM658DKh8bROemlZD8zrdOGRU=
X-Google-Smtp-Source: ABdhPJxSKZys321+eazB1Vl7zKy4uxTVihorRmwSE2zTWXqOqP6AasI2307MgWBIYRtdeCJygiVD+3F2pr8=
X-Received: from hridya.mtv.corp.google.com ([2620:15c:211:200:5860:362a:3112:9d85])
 (user=hridya job=sendgmr) by 2002:a25:874a:: with SMTP id e10mr15875623ybn.422.1642208814583;
 Fri, 14 Jan 2022 17:06:54 -0800 (PST)
Date: Fri, 14 Jan 2022 17:05:58 -0800
Message-Id: <20220115010622.3185921-1-hridya@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.34.1.703.g22d0c6ccf7-goog
From: Hridya Valsaraju <hridya@google.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
	Jonathan Corbet <corbet@lwn.net>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"=?UTF-8?q?Arve=20Hj=C3=B8nnev=C3=A5g?=" <arve@android.com>, Todd Kjos <tkjos@android.com>, Martijn Coenen <maco@android.com>,
	Joel Fernandes <joel@joelfernandes.org>, Christian Brauner <christian@brauner.io>,
	Hridya Valsaraju <hridya@google.com>, Suren Baghdasaryan <surenb@google.com>,
	Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@linaro.org>,
	Liam Mark <lmark@codeaurora.org>, Laura Abbott <labbott@redhat.com>,
	Brian Starkey <Brian.Starkey@arm.com>, John Stultz <john.stultz@linaro.org>,
	"=?UTF-8?q?Christian=20K=C3=B6nig?=" <christian.koenig@amd.com>, Tejun Heo <tj@kernel.org>,
	Zefan Li <lizefan.x@bytedance.com>, Johannes Weiner <hannes@cmpxchg.org>,
	Dave Airlie <airlied@redhat.com>, Matthew Brost <matthew.brost@intel.com>,
	Kenneth Graunke <kenneth@whitecape.org>, Matthew Auld <matthew.auld@intel.com>,
	Li Li <dualli@google.com>, Marco Ballesio <balejs@google.com>, Finn Behrens <me@kloenk.de>,
	Hang Lu <hangl@codeaurora.org>, Wedson Almeida Filho <wedsonaf@google.com>,
	Masahiro Yamada <masahiroy@kernel.org>, Andrew Morton <akpm@linux-foundation.org>,
	Nathan Chancellor <nathan@kernel.org>, Kees Cook <keescook@chromium.org>,
	Nick Desaulniers <ndesaulniers@google.com>, Miguel Ojeda <ojeda@kernel.org>,
	Vipin Sharma <vipinsh@google.com>, Chris Down <chris@chrisdown.name>,
	Daniel Borkmann <daniel@iogearbox.net>, Vlastimil Babka <vbabka@suse.cz>, Arnd Bergmann <arnd@arndb.de>,
	dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
	linaro-mm-sig@lists.linaro.org, cgroups@vger.kernel.org
X-MailFrom: 3Lh7iYQYKDQkq0rm7jpxxpun.lxvurwj0x-vv-1rpur121.urwj0x.x0p@flex--hridya.bounces.google.com
X-Mailman-Rule-Hits: max-recipients
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-size; news-moderation; no-subject; digests; suspicious-header
Message-ID-Hash: B47CYLQCOVGT5AZDD66MKVEYLBE6QLHM
X-Message-ID-Hash: B47CYLQCOVGT5AZDD66MKVEYLBE6QLHM
X-Mailman-Approved-At: Tue, 15 Feb 2022 07:09:52 +0000
CC: Kenny.Ho@amd.com, daniels@collabora.com, kaleshsingh@google.com, tjmercier@google.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [RFC 0/6] Proposal for a GPU cgroup controller
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/B47CYLQCOVGT5AZDD66MKVEYLBE6QLHM/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

This patch series revisits the proposal for a GPU cgroup controller to
track and limit memory allocations by various device/allocator
subsystems. The patch series also contains a simple prototype to
illustrate how Android intends to implement DMA-BUF allocator
attribution using the GPU cgroup controller. The prototype does not
include resource limit enforcements.

History of the GPU cgroup controller
====================================
The GPU/DRM cgroup controller came into being when a consensus[1]
was reached that the resources it tracked were unsuitable to be integrated
into memcg. Originally, the proposed controller was specific to the DRM
subsystem and was intended to track GEM buffers and GPU-specific resources[2].
In order to help establish a unified memory accounting model for all GPU and
all related subsystems, Daniel Vetter put forth a suggestion to move it out of
the DRM subsystem so that it can be used by other DMA-BUF exporters as well[3].
This RFC proposes an interface that does the same.

[1]: https://patchwork.kernel.org/project/dri-devel/cover/20190501140438.9506-1-brian.welty@intel.com/#22624705
[2]: https://lore.kernel.org/amd-gfx/20210126214626.16260-1-brian.welty@intel.com/
[3]: https://lore.kernel.org/amd-gfx/YCVOl8%2F87bqRSQei@phenom.ffwll.local/

Hridya Valsaraju (6):
  gpu: rfc: Proposal for a GPU cgroup controller
  cgroup: gpu: Add a cgroup controller for allocator attribution of GPU
    memory
  dmabuf: heaps: Use the GPU cgroup charge/uncharge APIs
  dma-buf: Add DMA-BUF exporter op to charge a DMA-BUF to a cgroup.
  dmabuf: system_heap: implement dma-buf op for GPU cgroup charge
    transfer
  android: binder: Add a buffer flag to relinquish ownership of fds

 Documentation/gpu/rfc/gpu-cgroup.rst | 192 +++++++++++++++++
 Documentation/gpu/rfc/index.rst      |   4 +
 drivers/android/binder.c             |  32 +++
 drivers/dma-buf/dma-heap.c           |  27 +++
 drivers/dma-buf/heaps/system_heap.c  |  68 ++++++
 include/linux/cgroup_gpu.h           | 120 +++++++++++
 include/linux/cgroup_subsys.h        |   4 +
 include/linux/dma-buf.h              |  18 ++
 include/linux/dma-heap.h             |  11 +
 include/uapi/linux/android/binder.h  |   1 +
 init/Kconfig                         |   7 +
 kernel/cgroup/Makefile               |   1 +
 kernel/cgroup/gpu.c                  | 305 +++++++++++++++++++++++++++
 13 files changed, 790 insertions(+)
 create mode 100644 Documentation/gpu/rfc/gpu-cgroup.rst
 create mode 100644 include/linux/cgroup_gpu.h
 create mode 100644 kernel/cgroup/gpu.c

-- 
2.34.1.703.g22d0c6ccf7-goog

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
