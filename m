Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id GusFCa3NO2p3dQgAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 24 Jun 2026 14:29:33 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 93F036BE182
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 24 Jun 2026 14:29:32 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=gmail.com header.s=20251104 header.b=WnxacpEO;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=gmail.com (policy=none)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 62C7E40A3E
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 24 Jun 2026 12:29:31 +0000 (UTC)
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	by lists.linaro.org (Postfix) with ESMTPS id 50BBB3F91D
	for <linaro-mm-sig@lists.linaro.org>; Wed, 24 Jun 2026 12:29:21 +0000 (UTC)
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-46cdc80779bso247584f8f.1
        for <linaro-mm-sig@lists.linaro.org>; Wed, 24 Jun 2026 05:29:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782304160; x=1782908960; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=pFbStoNOnxZ8EusijrnYkbV2hWnyICFUOIVa9+YJMwM=;
        b=WnxacpEOPS1B0noh1P6R/Sj9i0q7wKhCda6FSxC6AA/W946R8W0Sl7lFrGsXRXN1oR
         ekqUI9pdUbL13C16kf9IjmM9GuixCzF0KDCA67gqi5FA5JPQuEtzYOVg+eaOQl1eWrQQ
         WWdmREzLGihREpXfdBKhXXRvoTLK8u3erOCDMBeNttUyveZ1tieiuWIPVRr8ZRF08y1t
         RzkCYQEAf8py/1wd+ei1z1y2ZP8Epj5VC27yih2MYsj9LYKgm3evXP4barTa0TVcROOI
         M3s2lnbunSLoJRWH3VxbIJ7rkxCK4q/XAksdEPcEQZ3DY5nMHa9qPQOepGG7UzexU+lc
         +KLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782304160; x=1782908960;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pFbStoNOnxZ8EusijrnYkbV2hWnyICFUOIVa9+YJMwM=;
        b=A9wKT4KNrtqTmmoIwp/I4ww+FaxPyxNwfOvwGhZV8dktG/xY59Zo43RGSCG9SRLqSD
         PTvEb5Oue+IH516b7Z+zS9Lx2g/7XRwWvAsTDUk+oMg/d2+piDl8TMaHdyFier33vqCo
         3GvjQqeRAX2EMqDGP1VPqFd9BqXxxAI7+cO7ZkaxaSVktFfz7AJTI9Aak+dQp5ygPC9Z
         wAKcDXQXCy82bedIWHVkMZaMsx4nEXLTP/GjNoNjihUWK+m/1br4LQpAcRB07RMWo14H
         nslj6aSp8qMFa+arto0JIU4o5xFM8ZgfgFIiZtcpqJA94a5LsLhJQJA9aoVfiQScUaCd
         qPig==
X-Forwarded-Encrypted: i=1; AHgh+RogoayGhiTjdsjZGe2MfgqNPG1Ri741moYvxbummczToShgyKNbSnCUfIbzXOTwUd/6dshNR/1EtEp437SD@lists.linaro.org
X-Gm-Message-State: AOJu0YxEQ6rSzG92xBSvaY5G/T3M2q5hd7H7J0OyoBWUq0Yc8Lkv1TxW
	6CVsqMkNcVNoCFQVDpDxGVM86GBcZu85x2CCMY15Rw5qKJBFG4U2pmoi
X-Gm-Gg: AfdE7ckDHd36ka8DqWNXRxHNR+ldoRMy9prAFcF2HqDk1SluHnaFlvSz84dxCK53Mlt
	CSkl8k2e16MMUzeJB4uRcxWcbr0/O0Db5XcMs9dIZ1Uu4yP1IEpajQiNsOjjIp1Ro1902gxJ4yj
	APdvG6YDA7Kz5Vm9RDV2NmapdqDKsKpIJTRbYXDtsZlzyAei8XrHObm6FTo1Vm95ExE4UeQc2MU
	pApAu+QwVoUMSBO6j7Doi1TIFE8hn2oJnjbXgVANU/ygJqXf8jihm78vIgfLC1plgzG56kZeLZj
	F+obgBnJWhFqhmmQ4UWojBzcC+1/pJW65hCK/fFD2Z61c4LJXdu6PlNU2/YJNREOefhd4i3vVkx
	ArOAISeFrfUMQfYMB9osHN7KOWJcurscbHFxJASYwiRM1jgIjQ1yeSNc/FSB5R58FZgct0iLx1H
	b9wlCqvsZEY6Yzk/cCYGGW9I349w==
X-Received: by 2002:a05:6000:26d0:b0:45e:e44b:312b with SMTP id ffacd0b85a97d-46c09427c74mr5404079f8f.18.1782304159998;
        Wed, 24 Jun 2026 05:29:19 -0700 (PDT)
Received: from able.fritz.box ([2a00:e180:157e:3500:2be7:1a89:41c5:9239])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-46c9787dddbsm3896530f8f.3.2026.06.24.05.29.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Jun 2026 05:29:19 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: phasta@kernel.org,
	simona@ffwll.ch,
	sumit.semwal@linaro.org,
	tvrtko.ursulin@igalia.com,
	dakr@kernel.org
Date: Wed, 24 Jun 2026 13:13:24 +0200
Message-ID: <20260624122917.2483-1-christian.koenig@amd.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Spamd-Bar: --
Message-ID-Hash: 5T2D7FVISK64DPTSHGUZMFY7POVRQQGY
X-Message-ID-Hash: 5T2D7FVISK64DPTSHGUZMFY7POVRQQGY
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] dma_fence cleanup/rework
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/5T2D7FVISK64DPTSHGUZMFY7POVRQQGY/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.15 / 15.00];
	R_DKIM_REJECT(1.00)[gmail.com:s=20251104];
	R_MIXED_CHARSET(0.56)[subject];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:phasta@kernel.org,m:simona@ffwll.ch,m:sumit.semwal@linaro.org,m:tvrtko.ursulin@igalia.com,m:dakr@kernel.org,m:dri-devel@lists.freedesktop.org,m:linux-media@vger.kernel.org,m:linaro-mm-sig@lists.linaro.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[ckoenigleichtzumerken@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ckoenigleichtzumerken@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	DKIM_TRACE(0.00)[gmail.com:-];
	RCPT_COUNT_SEVEN(0.00)[8];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:mid,linaro.org:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 93F036BE182

In a recent discussion with Philip and Danilo the question came up what
was already tried and never finished to cleanup the dma_fence framework.

So here are the different ideas I came with but never fully finished,
with the patches itself modernized and rebased on top of drm-misc-next.

The main goal of those changes is to make it easier to implement dma_fence
backends and don't enforce unnecessary constrains on implementations.

As first step the locking around the dma_fence_ops.signaled callback is
made consistent by removing the dma_fence_is_signaled_locked() function.

This was mostly used by backends itself, but if polling the HW is desired
the backends can call their own functions for this directly without going
through the dma-fence layer.

XE actually seems to be the only driver which make use of that for a bit
more handling. For all other cases testing the signaled flag should be enough.

Then forcefully calling dma_fence_signaled() is removed from the dma-fence
layer and moved into the backend implementations.

This allows the backend implementations to cleanup after they have
signaled the fence. Such cleanup can include removing now signaled fences
from lists, dropping references, starting work etc....

Especially nouveau seems to have some really messy workaround because of
that involving the DMA_FENCE_FLAG_USER_BITS and installing callbacks
because the reference to the context couldn't be dropped directly after
signaling. This can now be cleaned up as far as I can see.

In the long term this should also allow reworking the error handling, e.g.
removing dma_fence_set_error() and instead giving the error as mandatory
parameter to dma_fence_signal().

Then the last piece is dropping calling enable_signaling callback with the
dma_fence lock held. This makes it possible for backends to acquire locks
which are semantically ordered outside of the dma_fence lock.

This is necessary to allows using the dma_fence inline lock in more cases,
previously backends used some common external lock for their dma_fences to
for example make it possible remove fences from linked lists.

Please comment and review,
Christian.

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
