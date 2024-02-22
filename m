Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id BBF44860124
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 22 Feb 2024 19:25:25 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A62FF43D4B
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 22 Feb 2024 18:25:24 +0000 (UTC)
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	by lists.linaro.org (Postfix) with ESMTPS id 661B03F1FD
	for <linaro-mm-sig@lists.linaro.org>; Thu, 22 Feb 2024 18:25:09 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=cP9xeJZe;
	spf=pass (lists.linaro.org: domain of groeck7@gmail.com designates 209.85.214.174 as permitted sender) smtp.mailfrom=groeck7@gmail.com;
	dmarc=none
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-1dc09556599so601565ad.1
        for <linaro-mm-sig@lists.linaro.org>; Thu, 22 Feb 2024 10:25:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708626308; x=1709231108; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bj3IcFn8mnJgzD3CoUY6c78LqZOUjuMORbYEATmxZBU=;
        b=cP9xeJZea0U6GkzscWDRqyQOitRoFf6QeweWqYWe8Pd2FeLVaPiqCkKNBDJWzb9qNN
         Pya0ZCugfTMMPeiDov0Mk/ietnWAai0KAcloyD9URSftoWHC3gn4pRKwhtjpOWM+5MKd
         wF93I3yfPRDOfI23347R0jf+TyzS5sMab8Tmtfp696ht9/lxb8tOHVU5qrtiA5xDuMci
         15Lwvzmaqp14yIF/LOeO2nNbh61iPToYWeeZaccC9yuWqXVoxihzCFGjS2VOJxAhRk3S
         sy0m2KxWCJYleu9bGN/8DDKxuBq7R+W++QDR3bJof2RBGTpFYJ61RbOsdZrEiZAAyCAT
         ccMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708626308; x=1709231108;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bj3IcFn8mnJgzD3CoUY6c78LqZOUjuMORbYEATmxZBU=;
        b=kNygElgFbhfBkU6rdBKqMWtMiqbB442jjbUl34VUz8aoz6GUBWbgk2911pu1/GC3dm
         skQX1NuKdGU3m1gC79RMyiU+cudxW9UQlKYvDR8ldz5Gx2LdxznINn2CZLY/hn4lHRAO
         dKg6f1Y0uKG8MHHBVdeE+jpkZeohJ0EBJW0k08hn//qbo0YNQ2NqwmvWLALaR50lN8N4
         SRLQhMAwK4L+2CQnrDVwoVq6F0dD2eJ8vPb6Q9vric9zTheHDu7N9RMM3xsx9iDndSng
         msqOafv7cr6uLpfDwfqZ71viIVt7icYUZGwRB5vsZ9HCcbuuklG0Ly34lo96I3gXlKy+
         Q4og==
X-Forwarded-Encrypted: i=1; AJvYcCWE+K6fLlc+VaXB4rE3/AfzB54qz4aIh7JnxyPMs15M0IG8dqIx2GR2FiuQg9WTUZv4Y/cKH2u/dBreO2ASLdo7sXUo3Kgh/zRG0vkS+dQ=
X-Gm-Message-State: AOJu0YwQTISw/YdtQwfXImKCXKs+Cxpdla9aQhmH60bvzu35Xk3mK8qL
	M6LIbb+yoOKnXfGer0DAgD3ralZN2ZxBbB+q9/qRGAj7Wpi8liD9
X-Google-Smtp-Source: AGHT+IHcoigpFbKIQ5fbALcZQ6Rz++MRYgKPcOOAhRgDC8V+XygUKmSTJuBfrizzNDsVEvMULKcBiQ==
X-Received: by 2002:a17:902:e545:b0:1db:ed54:a726 with SMTP id n5-20020a170902e54500b001dbed54a726mr15517677plf.63.1708626308374;
        Thu, 22 Feb 2024 10:25:08 -0800 (PST)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
        by smtp.gmail.com with ESMTPSA id mi11-20020a170902fccb00b001da34166cd2sm10255199plb.180.2024.02.22.10.25.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Feb 2024 10:25:07 -0800 (PST)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Thu, 22 Feb 2024 10:25:06 -0800
From: Guenter Roeck <linux@roeck-us.net>
To: Marco Pagani <marpagan@redhat.com>
Message-ID: <e38512f3-626f-42ae-bb3b-3f631dfaed9c@roeck-us.net>
References: <20231130171417.74162-1-marpagan@redhat.com>
 <a45b796d-5e04-4eac-b5ba-ea6bb3b6131b@roeck-us.net>
 <045bfb84-9833-442c-ac54-ed7a26451afa@redhat.com>
 <fb2ac929-6650-444e-8f24-c9b1562d2bb3@roeck-us.net>
 <ad03c582-28b9-40b2-9c7b-8372ed5a05c2@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ad03c582-28b9-40b2-9c7b-8372ed5a05c2@redhat.com>
X-Rspamd-Queue-Id: 661B03F1FD
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.30 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	FORGED_SENDER(0.30)[linux@roeck-us.net,groeck7@gmail.com];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.214.174:from];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linux@roeck-us.net,groeck7@gmail.com];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com,redhat.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DMARC_NA(0.00)[roeck-us.net];
	RCVD_COUNT_TWO(0.00)[2];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: 6QDXTQ4SJMFAP3XWWZNNPNN2WRMH4RFH
X-Message-ID-Hash: 6QDXTQ4SJMFAP3XWWZNNPNN2WRMH4RFH
X-MailFrom: groeck7@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Daniel Vetter <daniel@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Christian Koenig <christian.koenig@amd.com>, Javier Martinez Canillas <javierm@redhat.com>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5] drm/test: add a test suite for GEM objects backed by shmem
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/6QDXTQ4SJMFAP3XWWZNNPNN2WRMH4RFH/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Thu, Feb 22, 2024 at 05:33:48PM +0100, Marco Pagani wrote:
> > 
> > In this context, the TTM unit tests fail as well in qemu, with worse result:
> > It seems there is some bad cleanup after a failed test case, causing list
> > corruptions in the drm core and ultimately a crash. I don't know if this
> > is also caused by the missing dma_mask initialization.
> > 
> 
> That's interesting. Which --arch argument are you using to run the
> tests with QEMU?

Example (I am not sure if any of those parameters matters; it is just one
of my tests):

qemu-system-x86_64 -kernel arch/x86/boot/bzImage -M q35 -cpu IvyBridge \
	-no-reboot -snapshot -smp 2 \
	-device e1000,netdev=net0 -netdev user,id=net0 -m 512 \
	-drive file=rootfs.ext2,format=raw,if=ide \
	--append "earlycon=uart8250,io,0x3f8,9600n8 root=/dev/sda1 console=ttyS0" \
	-d unimp,guest_errors -nographic -monitor none

This results in:

[ ... ]
[    5.989496]     KTAP version 1
[    5.989639]     # Subtest: ttm_device
[    5.989711]     # module: ttm_device_test
[    5.989760]     1..5
[    6.002044]     ok 1 ttm_device_init_basic
[    6.013557]     ok 2 ttm_device_init_multiple
ILLOPC: ffffffffb8ac9350: 0f 0b
[    6.022481]     ok 3 ttm_device_fini_basic
[    6.026172] ------------[ cut here ]------------
[    6.026315] WARNING: CPU: 1 PID: 1575 at drivers/gpu/drm/ttm/ttm_device.c:206 ttm_device_init+0x170/0x190
...
[    6.135016]         ok 3 Above the allocation limit
[    6.138759] ------------[ cut here ]------------
[    6.138925] WARNING: CPU: 1 PID: 1595 at kernel/dma/mapping.c:503 dma_alloc_attrs+0xf6/0x100
...
[    6.143850]     # ttm_pool_alloc_basic: ASSERTION FAILED at drivers/gpu/drm/ttm/tests/ttm_pool_test.c:162
[    6.143850]     Expected err == 0, but
[    6.143850]         err == -12 (0xfffffffffffffff4)
[    6.148824]         not ok 4 One page, with coherent DMA mappings enabled

From there things go downhill.

[    6.152821] list_add corruption. prev->next should be next (ffffffffbbd53950), but was 0000000000000000. (prev=ffff8af1c38f9e20).

and so on until the emulation crashes.

Guenter
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
