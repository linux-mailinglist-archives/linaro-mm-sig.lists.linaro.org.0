Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8BhxHPwGi2kdPQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 10 Feb 2026 11:22:52 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 01927119995
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 10 Feb 2026 11:22:51 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A5BD53F990
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 10 Feb 2026 10:22:50 +0000 (UTC)
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	by lists.linaro.org (Postfix) with ESMTPS id 47B123F721
	for <linaro-mm-sig@lists.linaro.org>; Tue, 10 Feb 2026 10:22:37 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=eKXBaoZO;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.128.43 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-482f454be5bso54261835e9.0
        for <linaro-mm-sig@lists.linaro.org>; Tue, 10 Feb 2026 02:22:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770718956; x=1771323756; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=os/k6iwlWF1gaj/KEHCUCqdNHK29HjiIL5zJuBYNngA=;
        b=eKXBaoZO3Ahw5V0SR7bGnYRiQdzglv057Y10eJgTWGvwyEcn7lBbTKNlcKaWK73E04
         Mtr6G7E1DGzggdVeTXb11/cdFS4qcTtDBF57JuCuLLQkSZmmxV5FCNvIroLi4R51+P/w
         MZuVfXjuJTGxqxhrpqEisVN6WG9iPwmpkgP/GcV5XnNdQsPq7YcfXQ48Tpnbj9fOT3ar
         9+PH/aMhc1wxV4viQlB7AkAOXv4v09F4vbfUp2o6eriOEVcKXa6Eebr4a3+0EBBUTf5J
         0Xkn0GQOFGK9ecbQXFv5sTAFFTvr99jFzUF522pcMtFARJFWaulg9OsbYH9MCdqOGCPK
         l3hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770718956; x=1771323756;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=os/k6iwlWF1gaj/KEHCUCqdNHK29HjiIL5zJuBYNngA=;
        b=dxDBbLJeuNJIWGvldia3p2BXGXUjZJFXeBvlQwctlswftsLvR8Pw41s9SLwpcEnzm3
         LnXrXtwq8wyhZi06AaoZI+X/9t78Wb+cT2CiP4XrSrEzByI/g/8DhKJWIOOsv2o3lEnx
         SjTTX1Esw5bhfCV4XBU8QEcp+d0U8RETKNdi4Mzy/SUa8oZ4NlFb1eVZqQZdOrHPsOdw
         AH0Dg6DD+zQPFJ/zpjbeufCi2bOwWIhv/sdlVXqjUNuV65jc/n3bhAp0Xfrvp9I0EWTa
         oefm/aBaUmIYi+z1QBDtGgyXQu8uP+kERreXmIAf1PsGM4wBkIL1+Bo0KxaBOw/cbpFs
         yUVg==
X-Forwarded-Encrypted: i=1; AJvYcCUnw94JmPlX/dqxWKaYM/kF3KeN+HrbFr2+6cY8ZtKMjg+9lGt6VPPqzcm9T57b5jKOoXS2Ah3FXEK2YA5C@lists.linaro.org
X-Gm-Message-State: AOJu0YxNzBk9DJ57JWYFA6EzqvZ46rA4/S1laVLBfcnI804SAgPYtM/m
	SLatb1cKoDlYS7RY/PBOCaxRqdSwWNnZ7PYzUMB8IFIQZEpC93nuODah
X-Gm-Gg: AZuq6aI7VWAnXAW0m3e+8OXMcs3SV5528Mr1XAuzhoxrQYBhFAQiNv7pags0Eu83Ms6
	zDlahj8pHnE4sAFQEBlaELG/deqT9hvgAiUJvmhgl/Aq89P6gtDKHJi3Qv4cgVjc2WEJywosB3R
	ZWZsUfsQ2eX7Gfyq6J3YEtkbTle9k+j/cWlSJFLrs7BJjZi70mTqZfo8qG3ZrG4q9BAzGcP5dK6
	wfYZ4WUl7RLgILcZQYJUe2piSsrwYKKaZOfvrq6bCl42omuby9xN5OFIea3k2sRnatbhDUXyv6Z
	cv87k8pv2OMNDiQWn1awpKA58NMblNFYH3NKFULTaeKpS4lXvvysvMMEFiPFp1ogkAjPwewbDsA
	MuYZFoWP9FEUXOxhHgUWFaR1F3o03oayySU3mfYhVFUediK3mUhsU0MJRm8taO/8dkfrjt2V+VO
	+Kjd0fsLBv8tpCYRy+RM3Dd6oxbScNxer4slvM
X-Received: by 2002:a05:600c:3547:b0:47e:e59c:67c5 with SMTP id 5b1f17b1804b1-48350521bebmr24853315e9.8.1770718956038;
        Tue, 10 Feb 2026 02:22:36 -0800 (PST)
Received: from able.fritz.box ([2a00:e180:152a:6000:83ca:11f0:7e35:a75d])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4834d5d8ebfsm81549605e9.2.2026.02.10.02.22.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Feb 2026 02:22:35 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: phasta@mailbox.org,
	matthew.brost@intel.com,
	sumit.semwal@linaro.org
Date: Tue, 10 Feb 2026 11:01:55 +0100
Message-ID: <20260210102232.1642-1-christian.koenig@amd.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Spamd-Bar: --
Message-ID-Hash: 4UWGL432OJBPBYH7T25IP45UXHQXQHYA
X-Message-ID-Hash: 4UWGL432OJBPBYH7T25IP45UXHQXQHYA
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Independence for dma_fences! v7
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4UWGL432OJBPBYH7T25IP45UXHQXQHYA/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.59 / 15.00];
	R_DKIM_REJECT(1.00)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	SUBJECT_HAS_EXCLAIM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:-];
	RCPT_COUNT_FIVE(0.00)[5];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ckoenigleichtzumerken@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:mid,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 01927119995
X-Rspamd-Action: no action

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

v6:

Minor style changes, re-ordered patch #1, dropped the scheduler fence
change for now

v7:

The patch adding the dma_fence_was_initialized() function was pushed
upstream individually since that is really an independent cleanup.

Fixed some missing i915 bits in patch "dma-buf: abstract fence locking".

Please review and comment,
Christian.

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
