Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B6C5D19D35
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 13 Jan 2026 16:21:37 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3D8C23F809
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 13 Jan 2026 15:21:36 +0000 (UTC)
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	by lists.linaro.org (Postfix) with ESMTPS id 5B1243F776
	for <linaro-mm-sig@lists.linaro.org>; Tue, 13 Jan 2026 15:21:29 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=LrEKfjnJ;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.128.49 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-477619f8ae5so57294435e9.3
        for <linaro-mm-sig@lists.linaro.org>; Tue, 13 Jan 2026 07:21:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768317688; x=1768922488; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=J1dWJcUFzwempxnrfnqw/Kviebg2qhRHXbN655YU35I=;
        b=LrEKfjnJ2AJ/PrKFdI+6ZCkyBNj9TCleit3eIFfxrpUIqVjyRGzirPBIP0QiPk0quF
         ucR51SLG52hG7Xp4WiKARiLRSp5jjd7ta6VyLu/sdr2FCgOKx/X6BmihOOIPLiN0F/Ah
         tNzC4Whc6CSJkQ/g005peFSbsy+keTe7ZCWsIozNvcBJLAYu2n+naa/ODyHb8TuVixKa
         lP7VukFBOngSCSEKr5Oe2aYR5fzeAeRUi+bz6p6pww4AY2byiLZOTpuzVH1h057SQjx8
         9B0TgRVVWp8AKh/Qju5oSyXIQQMmvdXn+8l+aBvmMooLkezjtq/farzNizCFw5y7QVNw
         5uYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768317688; x=1768922488;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=J1dWJcUFzwempxnrfnqw/Kviebg2qhRHXbN655YU35I=;
        b=MhaD5Loa9IhZbnhPP3zozxJO0Mzm/azVUDlu/ytpS+WTWBXQpCrr28EpzcjjFZHH4W
         1BwzjMn7hfnpm47PepKtI1Fyyhje1/Ff7UmXUDG+4Xzqp9NyWiofWC9bG3D6lUPmi3KB
         kzYi3mXo46hrZfJzp+5GwFKhWyAMdglVgYiE+AXbSJWg/LkYsJwPeDkxA15PakAXIfxT
         EYkxf8F8Hmj5BEyEOWrUN5FXTX5xE05CBkvtexXXCdAc+0t3xI5ryEl9+/74u1EirmCn
         GUoggZQf4WEQ73WmQlDO7NPMr91eFhcvI02bxsGudOaskCy40iUFUDgM5KhQ+dORLBQD
         DFAA==
X-Forwarded-Encrypted: i=1; AJvYcCXF7ag22Px+1C3UwnZ1o+VbCMYp/XawBQj8YPGrT+8yJQJO8GYJGUTgBbEopS1yDlSzGpgMMiRXIFZv3Bcg@lists.linaro.org
X-Gm-Message-State: AOJu0YxD+QAFTR91oAjNaytQKINvU7DuUKBD/4c9n0qiG/uCFVU9dgzy
	O7xU4Dl2FOZBO/SzGqz7rY3HlIoWzX1/72/inCGxcGpXaTKn56Q0qEU+
X-Gm-Gg: AY/fxX5uWMnVRJG5VrTyf8NjySKm03d65NpD7gNGL/zfVMTis6BOZYVEjU8O9P3bflW
	uyOEhsLGselPI7W7PpLICe5tzoYr5JWwHZai8bR/cSQ6ZfCUpMT37330G1MYru6vTo/2zVKhGEY
	QXqycAIAu+BoJZp9i6D+LrabG76SGZ31yLCzVfhEdxYr2LrFRCCyE0jiax7sblnmC7HLajFpPZH
	FQR6uNKNY1G+Re7g4wuBX6Ck95BPMxlWxiHbRgKyP0gBwBZ/jkapLCZdmokNsyRhs4/Dh/DKR2+
	7hbG22dGgkTuibz4Y13HspYxZFGE05L4NGHMVnKVcvTaICjDrxwaTdKMyXoY4i0kNUqfdNNml+k
	EPRx9W7rgcgOTuAey2PqTrJoWqIxEbB66p5HPL5l4v4G9idtKiQhDb6BZyG7LwmTKbDAaRP/2Fj
	NX7PYhejXV35ds3ged7/jubjs=
X-Google-Smtp-Source: AGHT+IGjIUEnewA2L+V9SoTvM1a721OQqOdT2FPDelYdlyiQdNYBTR10cb44NTqBgJrYQhPJeCm/cw==
X-Received: by 2002:a05:600c:4f53:b0:46e:506b:20c5 with SMTP id 5b1f17b1804b1-47d84b5b496mr224286865e9.26.1768317688062;
        Tue, 13 Jan 2026 07:21:28 -0800 (PST)
Received: from able.fritz.box ([2a00:e180:141c:9800:1651:dfa:9e48:25d5])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47ecf6a5466sm129518405e9.11.2026.01.13.07.21.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jan 2026 07:21:27 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: phasta@mailbox.org,
	tursulin@ursulin.net,
	matthew.brost@intel.com,
	sumit.semwal@linaro.org
Date: Tue, 13 Jan 2026 16:16:07 +0100
Message-ID: <20260113152125.47380-1-christian.koenig@amd.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Rspamd-Queue-Id: 5B1243F776
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.76 / 15.00];
	BAYES_HAM(-2.98)[99.90%];
	R_MIXED_CHARSET(0.71)[subject];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_FROM(0.00)[gmail.com];
	SUBJECT_HAS_EXCLAIM(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.49:from];
	TO_DN_NONE(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DNSWL_BLOCKED(0.00)[209.85.128.49:from,2a00:e180:141c:9800:1651:dfa:9e48:25d5:received];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DWL_DNSWL_BLOCKED(0.00)[gmail.com:dkim];
	NEURAL_HAM(-0.00)[-0.999];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: 5OTSFXVUOFUEQ5CWNFSANDWI5EXHI3WC
X-Message-ID-Hash: 5OTSFXVUOFUEQ5CWNFSANDWI5EXHI3WC
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Independence for dma_fences! v5
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/5OTSFXVUOFUEQ5CWNFSANDWI5EXHI3WC/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi everyone,

dma_fences have ever lived under the tyranny dictated by the module
lifetime of their issuer, leading to crashes should anybody still holding
a reference to a dma_fence when the module of the issuer was unloaded.

The basic problem is that when buffer are shared between drivers
dma_fence objects can leak into external drivers and stay there even
after they are signaled. The dma_resv object for example only lazy releases
dma_fences.

So what happens is that when the module who originally created the dma_fence
unloads the dma_fence_ops function table becomes unavailable as well and so
any attempt to release the fence crashes the system.

Previously various approaches have been discussed, including changing the
locking semantics of the dma_fence callbacks (by me) as well as using the
drm scheduler as intermediate layer (by Sima) to disconnect dma_fences
from their actual users, but none of them are actually solving all problems.

Tvrtko did some really nice prerequisite work by protecting the returned
strings of the dma_fence_ops by RCU. This way dma_fence creators where
able to just wait for an RCU grace period after fence signaling before
they could be save to free those data structures.

Now this patch set here goes a step further and protects the whole
dma_fence_ops structure by RCU, so that after the fence signals the
pointer to the dma_fence_ops is set to NULL when there is no wait nor
release callback given. All functionality which use the dma_fence_ops
reference are put inside an RCU critical section, except for the
deprecated issuer specific wait and of course the optional release
callback.

Additional to the RCU changes the lock protecting the dma_fence state
previously had to be allocated external. This set here now changes the
functionality to make that external lock optional and allows dma_fences
to use an inline lock and be self contained.

v4:

Rebases the whole set on upstream changes, especially the cleanup
from Philip in patch "drm/amdgpu: independence for the amdkfd_fence!".

Adding two patches which brings the DMA-fence self tests up to date.
The first selftest changes removes the mock_wait and so actually starts
testing the default behavior instead of some hacky implementation in the
test. This one got upstreamed independent of this set.
The second drops the mock_fence as well and tests the new RCU and inline
spinlock functionality.

v5:

Rebase on top of drm-misc-next instead of drm-tip, leave out all driver
changes for now since those should go through the driver specific paths
anyway.

Address a few more review comments, especially some rebase mess and
typos. And finally fix one more bug found by AMDs CI system.

Especially the first patch still needs a Reviewed-by, apart from that I
think I've addressed all review comments and problems.

Please review and comment,
Christian.

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
