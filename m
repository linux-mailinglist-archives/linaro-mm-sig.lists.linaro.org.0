Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mHE0HOvhDmrACwYAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 21 May 2026 12:43:55 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id EA30B5A382F
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 21 May 2026 12:43:54 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BE6BF40965
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 21 May 2026 10:43:53 +0000 (UTC)
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
	by lists.linaro.org (Postfix) with ESMTPS id E49373F751
	for <linaro-mm-sig@lists.linaro.org>; Thu, 21 May 2026 10:43:42 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=ZkMtUmZD;
	spf=pass (lists.linaro.org: domain of mikhail.v.gavrilov@gmail.com designates 209.85.208.181 as permitted sender) smtp.mailfrom=mikhail.v.gavrilov@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-393800f638bso45911481fa.1
        for <linaro-mm-sig@lists.linaro.org>; Thu, 21 May 2026 03:43:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779360222; x=1779965022; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IotSskqgPt1trYIpm3eRWveVqEambqTQS5bkqN0X6AA=;
        b=ZkMtUmZD4OP8UPoL0gAnlPXoS/oRF95TNqh+LRT5jIbhdJJBisOoXoarMewafEyk5z
         BNpioSUZG5EqHhqpB7CqNDkmMUhhyxeTYiic8fiYm0sSrVe43YPZfxmHonMmdYXCQbh9
         oo/MdFt9UY2vEIjyAUNDh+IWM1PydrnUTPXaHTs64mYWm9FdsR5rHlEH83LW204Oa1CW
         SLOtuEU0kF3OqkjZwN6LFMQtjrH/wZmcXP5N/3sO6GIoshnXxnON69lUxc0JIYskEh3U
         S12AdKbCTT1tAafArSRC8EL1ncORlYWhCqnthqJLnlLs4QbCpogwaIvvTdoQgDwz1gVn
         XY5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779360222; x=1779965022;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=IotSskqgPt1trYIpm3eRWveVqEambqTQS5bkqN0X6AA=;
        b=E+UT81Md+HC4U1JEEIPPyD709cWZgsE3o71R1uI0jhxKJOuLc2tbdixcbPsGxh3P/4
         HMgFOpjjO/1FYzSaf/hfGBM6+uR3n2vLgV1xaXHeLFAquM6A1ZA/pMALGEqM2SIVfAG3
         CP5XxQ6E8zuq2TnTxIeLIZWd35QRZlO49GLhNDWYQsKl49oHdAWD3wYxnQkIzjxPygdQ
         t6mG3s4QLX+BNIU/ouv2fhEh/aCdWgXRcqj3edBdEYcUs+uIfYZqPtPY4U335dbMUxSh
         id8Sx6aS2id17OO8Tswwqsn4ZQDLUND8R/PVrqlRYZLBOMk79n9LdtMUX4nxx647vSmq
         GWzw==
X-Forwarded-Encrypted: i=1; AFNElJ/QDZb7b3ct9HpQW4VNXS9FRypciK4fU9lcs+yTZ3VwdysJe7j4/IfZCImfnBZHoiynAhWAV99ecghxPr/J@lists.linaro.org
X-Gm-Message-State: AOJu0YyDCWl+Sa4InFO35YK7KCQKNmpn6oA9yUrdZeLzK+vy/PLLnrpL
	7Wbm242aolmCKdIlALwFn8UA16w0+sVQ3aZkzgv/xLUEXvr9E9WIgFQX
X-Gm-Gg: Acq92OGDbAMiOn2cQbiCojrs31sK1bjE+BNHy5kLGKdTzTR8cgO/V4W2Agvg4AKc07Y
	Tg6+2lZmnGyCHkZC5N9om6PKYIVBeKB7I4MOWClVbWJO64+KT4JOGNyr83V7Vm5pORiMiEeHu+8
	34+Mc+8d4fkhDE5Nv/7+TD9wFkiztoDFlRTyuMqbH1GwoOs2qrdtHMdQECBpBZRcIAL/ZMEbaQF
	b7IXC67vAtKX7XYtub+s1m4Py5kli7QpSvwwl5nsCZi/MsssulS+SD1sUZOAO1RhQcRGUWOOTKT
	EE2rGG7g9bELalQLk6wVvFdkKe6gPuXCGF43GoG4+j5uP0zQP3dOltoBLXDI02Gv9G9fzuEWc5m
	uThKgRD/fNHnUOvQTIzommRoZdW9X1+DUpG3akLkVJWLFn92Jc0jncYPzsbMonNWfN5FUfz0eJ/
	vomhERbcbUcHsA83TExygTPT0hQEdvwFexSjBn1I2BoNj3
X-Received: by 2002:a2e:be89:0:b0:394:2b8a:2348 with SMTP id 38308e7fff4ca-395ca644e5amr9678271fa.20.1779360221305;
        Thu, 21 May 2026 03:43:41 -0700 (PDT)
Received: from localhost ([188.234.148.119])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-395d0b49073sm1595611fa.31.2026.05.21.03.43.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 May 2026 03:43:40 -0700 (PDT)
From: Mikhail Gavrilov <mikhail.v.gavrilov@gmail.com>
To: amd-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org
Date: Thu, 21 May 2026 15:43:31 +0500
Message-ID: <20260521104335.28978-1-mikhail.v.gavrilov@gmail.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260520151741.50575-1-mikhail.v.gavrilov@gmail.com>
References: <20260520151741.50575-1-mikhail.v.gavrilov@gmail.com>
MIME-Version: 1.0
X-Spamd-Bar: --
Message-ID-Hash: E2M4BQYST4UMCK3F3QGOQK6DHVGHSAG7
X-Message-ID-Hash: E2M4BQYST4UMCK3F3QGOQK6DHVGHSAG7
X-MailFrom: mikhail.v.gavrilov@gmail.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Alex Deucher <alexander.deucher@amd.com>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Pierre-Eric Pelloux-Prayer <pierre-eric.pelloux-prayer@amd.com>, Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Mikhail Gavrilov <mikhail.v.gavrilov@gmail.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v4 0/2] drm/amdgpu: fix recursive ww_mutex in devcoredump IB dump
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/E2M4BQYST4UMCK3F3QGOQK6DHVGHSAG7/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [2.09 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:-];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[mikhailvgavrilov@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[amd.com,gmail.com,ffwll.ch,linaro.org,vger.kernel.org,lists.linaro.org];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:rdns,lists.linaro.org:helo]
X-Rspamd-Queue-Id: EA30B5A382F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This series fixes a lockdep "possible recursive locking" splat in
amdgpu_devcoredump_format() that fires on every GPU timeout once a job
with a PASID context is involved. With amdgpu.gpu_recovery=0 the timeout
handler refires every ~2 s, so the splat repeats until it drowns the
kernel ring buffer. It is also a real self-deadlock for IB BOs that
share their dma_resv with the root PD (the always-valid case).
 
The root cause: amdgpu_devcoredump_format() holds the VM root PD's
reservation and then reserves each IB BO on top of it, nesting two
reservation_ww_class_mutex acquires without a ww_acquire_ctx.
 
The fix teaches amdgpu_vm_lock_by_pasid() to lock the root PD in a
drm_exec context, so the devcoredump path can lock the root PD and all
the IB BOs together in one ww ticket. Because amdgpu_vm_lock_by_pasid()
has a second caller in the page-fault path, the series is split so each
patch builds and works on its own:
 
  1/2  Convert amdgpu_vm_lock_by_pasid() to take a drm_exec context and
       lock the root PD with drm_exec_lock_obj(). The drm_exec context
       holds the root BO reference, so the root output parameter is
       dropped. Updates the existing caller, amdgpu_vm_handle_fault().
       Pure refactor, no functional change to the page-fault path.
 
  2/2  Use the new signature in amdgpu_devcoredump_format(): lock the
       root PD and every IB BO together in one drm_exec ticket. The
       per-IB amdgpu_bo_reserve() nesting is gone, along with a BO
       refcount leak on the old reserve-failure path. This is the
       actual bug fix and carries the Fixes: tag.
 
Tested on Linux 7.1-rc4 + this series, Radeon RX 7900 XTX (gfx1100),
KASAN + PROVE_LOCKING enabled, using a small libdrm_amdgpu reproducer
that submits a GFX IB chained at GPU VA 0 and waits for the hang. Before
the series the splat fires on every TDR; after it the dmesg is clean
across repeated timeouts and the devcoredump output is unchanged.
 
v1: https://lore.kernel.org/amd-gfx/20260429143743.50743-1-mikhail.v.gavrilov@gmail.com/
v2: https://lore.kernel.org/amd-gfx/20260519161541.19994-1-mikhail.v.gavrilov@gmail.com/
v3: https://lore.kernel.org/amd-gfx/20260520151741.50575-1-mikhail.v.gavrilov@gmail.com/
 
Changes since v3:
- Lock the root PD with drm_exec_lock_obj() instead of
  amdgpu_vm_lock_pd(): the latter dereferences the VM pointer, which is
  not yet re-validated at that point (Christian).
- Drop the root output parameter of amdgpu_vm_lock_by_pasid() entirely;
  the drm_exec context already holds a reference on the locked root BO,
  so the extra reference and the parameter are unnecessary (Christian).
- Unlock the root BO with drm_exec_unlock_obj() on the VM-recheck-failed
  path (Christian).
- amdgpu_vm_handle_fault() and amdgpu_devcoredump_format() updated for
  the simplified signature; both lose their root variable.
- Drops the v3 kernel-doc "*root" reference, which also resolves the
  docutils "Inline emphasis start-string without end-string" warning
  the kernel test robot reported against v3.
 
Changes since v2:
- Reworked along the lines Christian suggested: amdgpu_vm_lock_by_pasid()
  takes a drm_exec context directly (patch 1), and the devcoredump code
  locks the root PD and all IB BOs in a single ticket (patch 2). The
  amdgpu_devcoredump_ib_ref struct and the three collect/lock/release
  helpers from v2 are gone.
 
Changes since v1:
- Switched from per-IB amdgpu_bo_reserve() to drm_exec.
- Dropped the Cc: stable tag: the regression only landed in 7.1-rc1, so
  the fix reaches 7.1 via drm-fixes without a stable backport.

Mikhail Gavrilov (2):
  drm/amdgpu: convert amdgpu_vm_lock_by_pasid() to drm_exec
  drm/amdgpu: fix recursive ww_mutex acquire in
    amdgpu_devcoredump_format

 .../gpu/drm/amd/amdgpu/amdgpu_dev_coredump.c  | 105 ++++++++++++------
 drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c        |  91 +++++++++------
 drivers/gpu/drm/amd/amdgpu/amdgpu_vm.h        |   2 +-
 3 files changed, 129 insertions(+), 69 deletions(-)

-- 
2.54.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
