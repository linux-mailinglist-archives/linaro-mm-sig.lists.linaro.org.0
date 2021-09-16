Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F08140D8E2
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Sep 2021 13:32:54 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B05C46323D
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Sep 2021 11:32:53 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 8738762DEF; Thu, 16 Sep 2021 11:32:51 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7A17C63631;
	Thu, 16 Sep 2021 11:32:46 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id EFDDF69D05
 for <linaro-mm-sig@lists.linaro.org>; Thu, 16 Sep 2021 11:31:29 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 8651F69CDA; Thu, 16 Sep 2021 11:31:13 +0000 (UTC)
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com
 [209.85.221.43])
 by lists.linaro.org (Postfix) with ESMTPS id D090066BF0
 for <linaro-mm-sig@lists.linaro.org>; Thu, 16 Sep 2021 11:31:09 +0000 (UTC)
Received: by mail-wr1-f43.google.com with SMTP id t8so1935469wri.1
 for <linaro-mm-sig@lists.linaro.org>; Thu, 16 Sep 2021 04:31:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=OelJOhuMSDpOCxseF7sOKocHejnff6bn9jvwNAWVN9c=;
 b=Iijq6Cm9Ej0SprjX1K9K5PvirqlrIaG6Y4k5CZcUa44rtXLi6ZhPbe1PQH4VWAwTmW
 mib7IISdNwrwpqo8C4wGcU/OMCxOvG/zhYKQJM0K2d0Zzt7nWqP05N9nIWatWhkwqmeN
 CtIs15zkBdLQJp/UlpAEIO9ouCgJueWdcdvkl9IT2Wl9OmUNmdyZlmJ7OJX8yzD5bk6O
 WNs98qv8SfYCauWiPIDihMRyKawOTr5Dbvv2RGaUb+m+9Z1zwliJC/vzOTCEtATuIBel
 DYYFKeUefV0Dv8y7Pr47mBHjXFVFfa9diSyRU77nnAD9beIqDCJ/VI3Nbg20SKqxdniu
 wRmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=OelJOhuMSDpOCxseF7sOKocHejnff6bn9jvwNAWVN9c=;
 b=bDDjDmKYSonf0uJ4d1fufCAM55GNbS0rVFeJ3reCgYbiD7IgL12nw1r0upzGYAuei7
 BPvS2HnVqMr8RPZRNMtteHtIp5194BNouy9FTECjXvJXqoSoniuIUFPJwJfjQjx1+Vfy
 c2L3NntF0bXIEFBm8SQk66rGlcXxnTpw3Ej9VyL3BTJ4izUBTgc9ulD6uw+HPHdMT/md
 USSiHUG94aHYZFf6Z6/NsfJI/B3zYu1bhR1e5CeCtdJcYuERDYeaXLQ0z8/E6BYG68YF
 nvCZAUS562SBI78QB6I/8YzvTF11K3Fb9vL4nHRt/bvw21iOiBFNBxghhxeWofVFaQAA
 YAVw==
X-Gm-Message-State: AOAM531NdFZcBGgeeMgfTiAXZf3gIjwc9chJuTn4AzzVutMK4MaFLNcb
 09XQuGeV6KaP61HBDgBQ4WF17B7VHHIbxsNb
X-Google-Smtp-Source: ABdhPJyyjNUHgeRlxAAv+2S4iFRKdiR8A03xaRO6uw/CnwGHfvRgcRffoM7u+ZLJtG1P/cJT31/PRA==
X-Received: by 2002:a05:6000:184e:: with SMTP id
 c14mr3236805wri.301.1631791868953; 
 Thu, 16 Sep 2021 04:31:08 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 c17sm3803674wrn.54.2021.09.16.04.31.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Sep 2021 04:31:08 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Date: Thu, 16 Sep 2021 13:30:42 +0200
Message-Id: <20210916113042.3631-27-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210916113042.3631-1-christian.koenig@amd.com>
References: <20210916113042.3631-1-christian.koenig@amd.com>
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
YS1yZXN2LmggYi9pbmNsdWRlL2xpbnV4L2RtYS1yZXN2LmgKaW5kZXggNjc2MTUxMmJhNjYyLi4z
ZTZmZmJhMGFmNzAgMTAwNjQ0Ci0tLSBhL2luY2x1ZGUvbGludXgvZG1hLXJlc3YuaAorKysgYi9p
bmNsdWRlL2xpbnV4L2RtYS1yZXN2LmgKQEAgLTM4NCwzMiArMzg0LDYgQEAgZG1hX3Jlc3ZfZXhj
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
