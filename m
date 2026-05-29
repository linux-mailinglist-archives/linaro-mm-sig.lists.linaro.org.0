Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uFjqBMA2GWrzswgAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 29 May 2026 08:48:32 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id A128C5FE243
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 29 May 2026 08:48:31 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7096140971
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 29 May 2026 06:48:30 +0000 (UTC)
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	by lists.linaro.org (Postfix) with ESMTPS id CA0143F8EE
	for <linaro-mm-sig@lists.linaro.org>; Fri, 29 May 2026 06:48:20 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=NEtg5MLO;
	spf=pass (lists.linaro.org: domain of mikhail.v.gavrilov@gmail.com designates 209.85.167.50 as permitted sender) smtp.mailfrom=mikhail.v.gavrilov@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-5a887ebb416so16997589e87.2
        for <linaro-mm-sig@lists.linaro.org>; Thu, 28 May 2026 23:48:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780037300; x=1780642100; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=doPRw5QapmDdqAPGgFbdNczGbZz+3rVnzTYKju4SbAA=;
        b=NEtg5MLO43rJHNlZEferWYZgpRk7u5+4eMk8ke+kV+c9L22xFmJaU9HoM9LJ8rtodl
         ivwfOAF7jeViOmvq/t4VUvUcOaHABwWaliShjMKWD+YUkdnJjG8SBOQzF+0Thz4DOYRW
         P0VA87+MnPCj6JrYR3UP+XtlmIftRrGEwP98al4UYUlE3+TYKYHzi/mmRsH/7TeqUhZl
         xLlMbwLpguxeKaqlnrbRcT0XIVybHa8bgsPtFjX+3O7b4penuyAqxEg8ySO8A4reCx09
         bxcrsyZhP0hXPNz2JdI0eu6pKLS7kafLlULsvnlSBpbTcCZDz4f79/Pgv46C6JVpAmnU
         ucEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780037300; x=1780642100;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=doPRw5QapmDdqAPGgFbdNczGbZz+3rVnzTYKju4SbAA=;
        b=R0ZjDg4sABJNCXGFYpviVB/q0Og49oPlte7AXOoJKj7Z6ZfOVrDZbs5vZYzJ9JP5A7
         1kY3lQAgjnoW/+pSDYM1kE74P352feUcEdBNB8hu+wJ3RRmXieCmCzn+y82gSH7n1f6e
         5xv5DY9Di8xIB/4Zl3DOANYcDZiz4KNk2ArpfMVyu6lLKQa615QoGSlMB1oN23ZelPsD
         yQrt/9RT4HUfK09Lsb/3biA6NI3Ov5SmuuRrluDsjrcqFLevfuq2AW1XdOCwyTyXhrju
         unijJfKJapK92Az1emmHOOXC8PAwqyL3vbcYBoDy/0gDtbFl5lo6dJxPYwt88sBT+KOk
         ln1w==
X-Forwarded-Encrypted: i=1; AFNElJ+h0nqPgNqWzYCCDf8bYotdIUm+czHrhJZ9Ca0FD5+NeDmGQlubufzGI+Z1HhjGSaG/piNh0pstiDYouM+T@lists.linaro.org
X-Gm-Message-State: AOJu0YxkybfueBRRPInVh3Pi3tpn6oXqaqelZ4I+vJ5PUAm/xD93dUYr
	668w/xIy3cbWqV2HS9vjn9S8Ve1+x06dyFfJqve/fD7wvIjGgJVp+b3b
X-Gm-Gg: Acq92OHWnW+SAlWw99i0fngIpS/jGbeBNW77yzZeAiQ+O2yJ8qTf6f68983LcxBERsv
	J7aghhSTOgrDWa7Re2wYARUZpg9QI8kc45ow/uKiQsEVCtbzJ0Mt2ID5UlSSptqpBpNFMKSmMhH
	TV7UQHse4f2x8yT7omwWdZuRKqzYVMQ0jKnNeajsZRVsapdP6JJOLpxQLA4uqtJ44VFNJcn3xWu
	ktiYr8jH8UDHH69erznBNDNjGMiMcL48D7gwoP4yGR66m7miIwjaSbLuXnJ+BTZSNo4QCWSzSRj
	Ftz2oNcnsDzRriCnHyH27zRWfXsZbS6CBBYQbROuzyW24GZhqgzr2EJZV6qjTxV7pZLkYOnSRvV
	rVw63Hx46hbTD9TN6l6oCSkh5Kg61qCbsaE6vexB1dZxUIrO1OtYbUhGO8We9AFQeWk2P0y8s0w
	P53unkInJeMn9MeWkLhETMLqqmO8yTgh3mruro02OI9Qs=
X-Received: by 2002:a05:6512:3d1c:b0:5aa:2a30:217a with SMTP id 2adb3069b0e04-5aa594a573bmr325607e87.34.1780037299072;
        Thu, 28 May 2026 23:48:19 -0700 (PDT)
Received: from localhost ([188.234.148.119])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5aa5b79f04dsm72147e87.83.2026.05.28.23.48.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 May 2026 23:48:17 -0700 (PDT)
From: Mikhail Gavrilov <mikhail.v.gavrilov@gmail.com>
To: amd-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org
Date: Fri, 29 May 2026 11:47:37 +0500
Message-ID: <20260529064740.25060-1-mikhail.v.gavrilov@gmail.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260521150841.20625-1-mikhail.v.gavrilov@gmail.com>
References: <20260521150841.20625-1-mikhail.v.gavrilov@gmail.com>
MIME-Version: 1.0
X-Spamd-Bar: --
Message-ID-Hash: JC5SS3XD7GA54JJPESXUHLLZ2KBH46CA
X-Message-ID-Hash: JC5SS3XD7GA54JJPESXUHLLZ2KBH46CA
X-MailFrom: mikhail.v.gavrilov@gmail.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Alex Deucher <alexander.deucher@amd.com>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Pierre-Eric Pelloux-Prayer <pierre-eric.pelloux-prayer@amd.com>, Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Mikhail Gavrilov <mikhail.v.gavrilov@gmail.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v6 0/2] drm/amdgpu: fix recursive ww_mutex in devcoredump IB dump
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/JC5SS3XD7GA54JJPESXUHLLZ2KBH46CA/>
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
	NEURAL_HAM(-0.00)[-0.882];
	FROM_NEQ_ENVFROM(0.00)[mikhailvgavrilov@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[amd.com,gmail.com,ffwll.ch,linaro.org,vger.kernel.org,lists.linaro.org];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:rdns,lists.linaro.org:helo]
X-Rspamd-Queue-Id: A128C5FE243
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
       (Reviewed-by Christian on v5.)
 
  2/2  Move the IB dumping into a separate helper that locks the root PD
       and every IB BO together in one drm_exec ticket. The per-IB
       amdgpu_bo_reserve() nesting is gone, along with a BO refcount
       leak on the old reserve-failure path. This is the actual bug fix
       and carries the Fixes: tag.
 
Tested on Linux 7.1-rc4 + this series, Radeon RX 7900 XTX (gfx1100),
KASAN + PROVE_LOCKING enabled, using a small libdrm_amdgpu reproducer
that submits a GFX IB chained at GPU VA 0 and waits for the hang. Before
the series the splat fires on every TDR; after it the dmesg is clean
across repeated timeouts and the devcoredump IB dump is produced
correctly.
 
v1: https://lore.kernel.org/amd-gfx/20260429143743.50743-1-mikhail.v.gavrilov@gmail.com/
v2: https://lore.kernel.org/amd-gfx/20260519161541.19994-1-mikhail.v.gavrilov@gmail.com/
v3: https://lore.kernel.org/amd-gfx/20260520151741.50575-1-mikhail.v.gavrilov@gmail.com/
v4: https://lore.kernel.org/amd-gfx/20260521104335.28978-1-mikhail.v.gavrilov@gmail.com/
v5: https://lore.kernel.org/amd-gfx/20260521150841.20625-1-mikhail.v.gavrilov@gmail.com/
 
Changes since v5 (all in patch 2, per Christian's review):
- Trim the commit message: drop the reproducer paragraph, keep the
  problem description and the solution.
- Move the IB dumping out of amdgpu_devcoredump_format() into a separate
  amdgpu_devcoredump_print_ibs() helper.
- Use goto error handling inside drm_exec_until_all_locked() instead of
  break, and drop the now-superfluous `locked` variable. drm_exec_fini()
  is called once at the end of the helper, not in the locking path.
- Patch 1 is unchanged from v5 and keeps Christian's Reviewed-by.
 
A note on one review point I couldn't fully confirm before respinning
(asked on the v5 thread [1], no reply yet): in the locking loop, when
amdgpu_vm_bo_lookup_mapping() returns no mapping for an IB, this version
treats it as non-fatal -- there is simply nothing to lock for that IB,
so the loop continues, and the content loop still emits the
"IB #N <addr>" header without a body. goto-abort is reserved for real
errors (VM not found, drm_exec_lock_obj() failure). If a missing mapping
should instead abort the whole dump, I'll change it.
 
[1] https://lore.kernel.org/amd-gfx/CABXGCsPPY3qX7Ad-a7==nmA5R7aejCTCrmWYpn-9OQQU=1eMMA@mail.gmail.com/
 
Changes since v4:
- Pass nr=1 to drm_exec_init() in amdgpu_vm_handle_fault() (Christian).
- Picked up Christian's Reviewed-by on patch 1.
 
Changes since v3:
- Lock the root PD with drm_exec_lock_obj() instead of
  amdgpu_vm_lock_pd(); drop the root output parameter; unlock with
  drm_exec_unlock_obj() on the VM-recheck-failed path (Christian).
- Resolves the docutils warning the kernel test robot reported on v3.
 
Changes since v2:
- Reworked along the lines Christian suggested: amdgpu_vm_lock_by_pasid()
  takes a drm_exec context directly (patch 1), devcoredump locks the
  root PD and all IB BOs in one ticket (patch 2). The v2 helper struct
  and the three collect/lock/release helpers are gone.
 
Changes since v1:
- Switched from per-IB amdgpu_bo_reserve() to drm_exec.
- Dropped the Cc: stable tag: the regression only landed in 7.1-rc1, so
  the fix reaches 7.1 via drm-fixes without a stable backport.

Mikhail Gavrilov (2):
  drm/amdgpu: convert amdgpu_vm_lock_by_pasid() to drm_exec
  drm/amdgpu: fix recursive ww_mutex acquire in
    amdgpu_devcoredump_format

 .../gpu/drm/amd/amdgpu/amdgpu_dev_coredump.c  | 215 ++++++++++--------
 drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c        |  91 +++++---
 drivers/gpu/drm/amd/amdgpu/amdgpu_vm.h        |   2 +-
 3 files changed, 184 insertions(+), 124 deletions(-)

-- 
2.54.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
