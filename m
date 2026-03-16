Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uMdJO7Zg5mkxvgEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:21:58 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C9004310CD
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:21:58 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A56BC404F9
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:21:57 +0000 (UTC)
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	by lists.linaro.org (Postfix) with ESMTPS id A6A8D3F683
	for <linaro-mm-sig@lists.linaro.org>; Mon, 16 Mar 2026 12:59:00 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=resnulli-us.20230601.gappssmtp.com header.s=20230601 header.b=Y7gWYlMr;
	spf=none (lists.linaro.org: domain of jiri@resnulli.us has no SPF policy when checking 209.85.221.43) smtp.mailfrom=jiri@resnulli.us;
	dmarc=none
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-439b97a8a8cso4682666f8f.1
        for <linaro-mm-sig@lists.linaro.org>; Mon, 16 Mar 2026 05:59:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1773665940; x=1774270740; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=QiV2UgPzDyf2BIxEKlEP0kmveErchJjvWqwkP1nC5aU=;
        b=Y7gWYlMrxBIk+emINAi6llC7h+D8qEG1TQGi6YkbKt+FtrwZK1ZF1zUmRCoiz4DLlh
         KhxwahO+umZNVRgP+gTwmlElZkHQevHUBHvos2kBfyl5sCHiS/r6jA9MTtrnAfJ6rWVt
         Si7UG8YsIyl2BlcMyXJA0sAOKfck5Dx1mKZ7tljoZ1dfDcT98Tmiz5yBr5QpwQkiV/mt
         xs4JQJegD1bsTVxDHoxAdFy8ZbuLVwSukAxE5RzT2dyKK0S5YJGdHgvFeh2mPTw5qWnb
         BoUgxvA0ZFdp+mShYPw8rDcvhCL5BzyaZSpr/oRP5SougmQojAmJSrVidKGyU0SKkVVF
         ft8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773665940; x=1774270740;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QiV2UgPzDyf2BIxEKlEP0kmveErchJjvWqwkP1nC5aU=;
        b=kY2qtTGBK99Zisw+BpMAqJjltgRvHAyZFYbWyMUO18680xRpmOC0pg8iB5V5dIWW0J
         nH4Z7VPuJf3hrm5Qh9COT1Pjgwk/63zVMidynjCJkqglE5V5oDo7LTas89IJNtqQSNSZ
         p6/puSQDEqAgyOPm/Ij4d/Jg8BP4h175lBU/kDb3FSYNyHiwPXkO0//EF/gYb/4e4f5e
         aNTYvXvGToKR/MDDB1UFJL9yUG1dqVw4WhZtb09zNqj/Q4jzZZMgb6lD5uxjhOhe/VHy
         x3sw1jqE6kXzY9h4obhLB/q+m5da83LpsarRXRNOqYbFlwNB3EFLpexbNBdIbTjox+aK
         Mh/w==
X-Forwarded-Encrypted: i=1; AJvYcCVoynxKmeCwuXK98LsjwrW3IyRedpXddPSrggvdu4M8DTI3zhh5SHYAOIRv0f6OueufMUJZJezR+8CnxRzz@lists.linaro.org
X-Gm-Message-State: AOJu0YyHKecVwWLBMEY2DSAsbPA2rNmQ194x3V9uHLpJuGHVfqt4UWzw
	NVTcyFnY8SdGbYXK3//wzOe5s8UVryBpExWQRzsaKFb8/Yj1FsqrudI8wBef0Asbe1Q=
X-Gm-Gg: ATEYQzx0qJXBRCsWJJkSqTR+55ujan9Odpknfaxln4UdVs6n5toNCkJbovOUL8xVYgl
	TegUrX99wsSf7/8etZqEJWrEddv7mTboQ2Amb+zkn3n1EUoxl5BHoa0x3XIYrBu5QaNE6Yevm7Y
	cNtMM2qPWq+Vr6g7v0BeA1jbHDdmD8R8b769IJCnbC7qeuojA2VGfAqWqWIlTcbUfQ4Q2qFKY/x
	B9uOpv0QWReo7ta/h8bGbUIA02VgzYUSFccd9aMA8D2FimzxKY+Ukje9/s3IPfSdcV9EqKOSQiC
	z2SIjaKuynuRNC37oz80IAauKOQYZBhxsbvMZPWfL9CKyyPjbE1YT/Ck+Eq4ZPIn9blxgmAwz3k
	v3MKNXhxE6DDcUbaGWbNonbU6Y8cs5mSB0+dtYjyjPe6Rivz9lJA/Df0DncyjL7wZQyhYoZZJKa
	55aAryNsm6MIuiMA==
X-Received: by 2002:a05:6000:18a8:b0:439:ccec:fcd0 with SMTP id ffacd0b85a97d-43a04db4fb9mr22368246f8f.29.1773665939476;
        Mon, 16 Mar 2026 05:58:59 -0700 (PDT)
Received: from localhost ([85.163.81.98])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43b3e9a4fcdsm14591157f8f.8.2026.03.16.05.58.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Mar 2026 05:58:58 -0700 (PDT)
From: Jiri Pirko <jiri@resnulli.us>
To: dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org,
	iommu@lists.linux.dev,
	linux-media@vger.kernel.org
Date: Mon, 16 Mar 2026 13:58:55 +0100
Message-ID: <20260316125857.617836-1-jiri@resnulli.us>
X-Mailer: git-send-email 2.51.1
MIME-Version: 1.0
X-Spamd-Bar: -
X-MailFrom: jiri@resnulli.us
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 23XIDGGBQPJBXFTAWR5DGYOMMJKDFCY5
X-Message-ID-Hash: 23XIDGGBQPJBXFTAWR5DGYOMMJKDFCY5
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:21:45 +0000
CC: sumit.semwal@linaro.org, benjamin.gaignard@collabora.com, Brian.Starkey@arm.com, jstultz@google.com, tjmercier@google.com, christian.koenig@amd.com, robin.murphy@arm.com, jgg@ziepe.ca, leon@kernel.org, sean.anderson@linux.dev, ptesarik@suse.com, catalin.marinas@arm.com, aneesh.kumar@kernel.org, suzuki.poulose@arm.com, steven.price@arm.com, thomas.lendacky@amd.com, john.allen@amd.com, ashish.kalra@amd.com, suravee.suthikulpanit@amd.com, linux-coco@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v4 0/2] dma-buf: heaps: system: add an option to allocate explicitly decrypted memory
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/23XIDGGBQPJBXFTAWR5DGYOMMJKDFCY5/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [1.49 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DATE_IN_PAST(1.00)[844];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_NA(0.00)[resnulli.us];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_SPAM(0.00)[0.588];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jiri@resnulli.us,linaro-mm-sig-bounces@lists.linaro.org];
	RCPT_COUNT_TWELVE(0.00)[24];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[resnulli.us:mid,lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email]
X-Rspamd-Queue-Id: 9C9004310CD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Jiri Pirko <jiri@nvidia.com>

Confidential computing (CoCo) VMs/guests, such as AMD SEV and Intel TDX,
run with encrypted/protected memory which creates a challenge
for devices that do not support DMA to it (no TDISP support).

For kernel-only DMA operations, swiotlb bounce buffering provides a
transparent solution by copying data through decrypted memory.
However, the only way to get this memory into userspace is via the DMA
API's dma_alloc_pages()/dma_mmap_pages() type interfaces which limits
the use of the memory to a single DMA device, and is incompatible with
pin_user_pages().

These limitations are particularly problematic for the RDMA subsystem
which makes heavy use of pin_user_pages() and expects flexible memory
usage between many different DMA devices.

This patch series enables userspace to explicitly request decrypted
(shared) memory allocations from new dma-buf system_cc_decrypted heap.
Userspace can mmap this memory and pass the dma-buf fd to other
existing importers such as RDMA or DRM devices to access the
memory. The DMA API is improved to allow the dma heap exporter to DMA
map the shared memory to each importing device.

Jiri Pirko (2):
  dma-mapping: introduce DMA_ATTR_CC_DECRYPTED for pre-decrypted memory
  dma-buf: heaps: system: add system_cc_decrypted heap for explicitly
    decrypted memory

 drivers/dma-buf/heaps/system_heap.c | 103 ++++++++++++++++++++++++++--
 include/linux/dma-mapping.h         |  10 +++
 include/trace/events/dma.h          |   3 +-
 kernel/dma/direct.h                 |  14 +++-
 kernel/dma/mapping.c                |  13 +++-
 5 files changed, 132 insertions(+), 11 deletions(-)

-- 
2.51.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
