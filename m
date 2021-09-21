Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 416464138C3
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 21 Sep 2021 19:39:13 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2D5BF6242C
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 21 Sep 2021 17:39:12 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 27D9E622E7; Tue, 21 Sep 2021 17:39:08 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D7A8761A28;
	Tue, 21 Sep 2021 17:39:04 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 4429866BF2
 for <linaro-mm-sig@lists.linaro.org>; Tue, 21 Sep 2021 17:37:36 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 4857163392; Tue, 21 Sep 2021 17:37:31 +0000 (UTC)
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com
 [209.85.221.47])
 by lists.linaro.org (Postfix) with ESMTPS id E55A361A23
 for <linaro-mm-sig@lists.linaro.org>; Tue, 21 Sep 2021 17:37:27 +0000 (UTC)
Received: by mail-wr1-f47.google.com with SMTP id g16so41544974wrb.3
 for <linaro-mm-sig@lists.linaro.org>; Tue, 21 Sep 2021 10:37:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=yn0dGzK8VwWATbg/MRLaeJ+EViGvUvAidNc2i9iKcqg=;
 b=BXp4vBPHgyMt4mphaz8OlmhLC0Sy42FigPpS5Xtaglzg8jnncZVb0WYrLRp7PkG67y
 EHAOzQG6va2BUIy7jCQSOuZEWwJpuKQuZRbs9aiRHWiKMfyJLCORDDkTJCPgIWFSrAv1
 JOnT7ZOgGjBpz2DR2WIg/inxZkW0h7LqShC5fkRQ02Bw8sv5HKrgCbsYomF+jFmAfdEx
 YMpr+i/ZdI2ZB/cXzb0XpsmqLoe38hF2I8tVtgvzfCzVMacaKtA2nHV6EJB63hYBAxxD
 xaJ7r5LREA2u9InAvND2j+55speamLkaFXslzhZ1T750nN/2aswO71LMSDEk/KX3HTC+
 Ri4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=yn0dGzK8VwWATbg/MRLaeJ+EViGvUvAidNc2i9iKcqg=;
 b=AU6HGELhCzONWXr5QmnBpN3fgR3+5xCJ/yT9Izt+73rud6yakJHemxpzscClmnEpBo
 I8WCs0z6/8+RAAZx4C4vOgfzClCQTkCnPyL/muxHsJ6w1nSbunUM/y3sTFlkIbDnNJRL
 AO3lcKUVMktyH7jcyt3ll7ol5VY/znNFwR4PiEPVS9odfQLyOOxuajDeo3NUZeTSJAE3
 oWntm0ckZy87VjIkoJ61Ni71463t8gOQ+FZplMZhZloPLJ9CXFxELZPtrC73z2R8Azw3
 dUKlPL0HI+7qt8AiWnV51YxMmkmDODnUDwsgML/BbKFgFT63do6WFCM9KbVthHH2HadB
 zaLQ==
X-Gm-Message-State: AOAM531sBdjVjL1kTxSiP39jv8epHwe8ib/TNVi1cSeUJIdn/JHhi6JR
 DONrekoLRN9/vcpI7kEn6XQ=
X-Google-Smtp-Source: ABdhPJzffrVmg63SpfjQoBj+8p0lFtYH9jgDg4ojsj/wafQkZwiDlftx4b0n0/O0NMeTyr9ebaN9Xg==
X-Received: by 2002:adf:f187:: with SMTP id h7mr18547361wro.115.1632245847038; 
 Tue, 21 Sep 2021 10:37:27 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 z13sm23310477wrs.90.2021.09.21.10.37.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Sep 2021 10:37:26 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: ckoenig.leichtzumerken@gmail.com, linaro-mm-sig@lists.linaro.org,
 dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org,
 intel-gfx@lists.freedesktop.org
Date: Tue, 21 Sep 2021 19:36:59 +0200
Message-Id: <20210921173659.246165-26-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210921173659.246165-1-christian.koenig@amd.com>
References: <20210921173659.246165-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 26/26] dma-buf: nuke
 dma_resv_get_excl_unlocked
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: "Unified memory management interest group."
 <linaro-mm-sig.lists.linaro.org>
List-Unsubscribe: <https://lists.linaro.org/mailman/options/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=unsubscribe>
List-Archive: <http://lists.linaro.org/pipermail/linaro-mm-sig/>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Subscribe: <https://lists.linaro.org/mailman/listinfo/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=subscribe>
Cc: tvrtko.ursulin@linux.intel.com, daniel@ffwll.ch
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

SGV1cmVrYSwgdGhhdCdzIGZpbmFsbHkgbm90IHVzZWQgYW55IG1vcmUuCgpTaWduZWQtb2ZmLWJ5
OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Ci0tLQogaW5jbHVk
ZS9saW51eC9kbWEtcmVzdi5oIHwgMjYgLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KIDEgZmls
ZSBjaGFuZ2VkLCAyNiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L2Rt
YS1yZXN2LmggYi9pbmNsdWRlL2xpbnV4L2RtYS1yZXN2LmgKaW5kZXggNzJlN2ViYWE2NzVmLi40
MmVhNmY2NjcxMjAgMTAwNjQ0Ci0tLSBhL2luY2x1ZGUvbGludXgvZG1hLXJlc3YuaAorKysgYi9p
bmNsdWRlL2xpbnV4L2RtYS1yZXN2LmgKQEAgLTQzNiwzMiArNDM2LDYgQEAgZG1hX3Jlc3ZfZXhj
bF9mZW5jZShzdHJ1Y3QgZG1hX3Jlc3YgKm9iaikKIAlyZXR1cm4gcmN1X2RlcmVmZXJlbmNlX2No
ZWNrKG9iai0+ZmVuY2VfZXhjbCwgZG1hX3Jlc3ZfaGVsZChvYmopKTsKIH0KIAotLyoqCi0gKiBk
bWFfcmVzdl9nZXRfZXhjbF91bmxvY2tlZCAtIGdldCB0aGUgcmVzZXJ2YXRpb24gb2JqZWN0J3MK
LSAqIGV4Y2x1c2l2ZSBmZW5jZSwgd2l0aG91dCBsb2NrIGhlbGQuCi0gKiBAb2JqOiB0aGUgcmVz
ZXJ2YXRpb24gb2JqZWN0Ci0gKgotICogSWYgdGhlcmUgaXMgYW4gZXhjbHVzaXZlIGZlbmNlLCB0
aGlzIGF0b21pY2FsbHkgaW5jcmVtZW50cyBpdCdzCi0gKiByZWZlcmVuY2UgY291bnQgYW5kIHJl
dHVybnMgaXQuCi0gKgotICogUkVUVVJOUwotICogVGhlIGV4Y2x1c2l2ZSBmZW5jZSBvciBOVUxM
IGlmIG5vbmUKLSAqLwotc3RhdGljIGlubGluZSBzdHJ1Y3QgZG1hX2ZlbmNlICoKLWRtYV9yZXN2
X2dldF9leGNsX3VubG9ja2VkKHN0cnVjdCBkbWFfcmVzdiAqb2JqKQotewotCXN0cnVjdCBkbWFf
ZmVuY2UgKmZlbmNlOwotCi0JaWYgKCFyY3VfYWNjZXNzX3BvaW50ZXIob2JqLT5mZW5jZV9leGNs
KSkKLQkJcmV0dXJuIE5VTEw7Ci0KLQlyY3VfcmVhZF9sb2NrKCk7Ci0JZmVuY2UgPSBkbWFfZmVu
Y2VfZ2V0X3JjdV9zYWZlKCZvYmotPmZlbmNlX2V4Y2wpOwotCXJjdV9yZWFkX3VubG9jaygpOwot
Ci0JcmV0dXJuIGZlbmNlOwotfQotCiAvKioKICAqIGRtYV9yZXN2X3NoYXJlZF9saXN0IC0gZ2V0
IHRoZSByZXNlcnZhdGlvbiBvYmplY3QncyBzaGFyZWQgZmVuY2UgbGlzdAogICogQG9iajogdGhl
IHJlc2VydmF0aW9uIG9iamVjdAotLSAKMi4yNS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8t
bW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4v
bGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
