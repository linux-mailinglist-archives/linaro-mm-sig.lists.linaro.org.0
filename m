Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DC364177DD
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Sep 2021 17:34:01 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D75CD62169
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Sep 2021 15:33:59 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id A295C6241C; Fri, 24 Sep 2021 15:33:58 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 58BF961B00;
	Fri, 24 Sep 2021 15:33:54 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id F0C2C61ED8
 for <linaro-mm-sig@lists.linaro.org>; Fri, 24 Sep 2021 15:31:52 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 516E662D53; Fri, 24 Sep 2021 15:31:41 +0000 (UTC)
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com
 [209.85.221.48])
 by lists.linaro.org (Postfix) with ESMTPS id 2B7B96323F
 for <linaro-mm-sig@lists.linaro.org>; Fri, 24 Sep 2021 15:31:35 +0000 (UTC)
Received: by mail-wr1-f48.google.com with SMTP id i23so28764346wrb.2
 for <linaro-mm-sig@lists.linaro.org>; Fri, 24 Sep 2021 08:31:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=d730QTcA12WB0FxkhM0n+vEOwpHIgTa3YH56dqVvnac=;
 b=mmuXhFJ0qEV7A7UrLuynDivz0cZ/r085e6pCA784a2FVamGKuvtee2dOg0nHjMroS6
 UvOnoxzVqqVkOICBgHNknXEw/IrvfRGckdzbkBHVl/OUt87YsWH3vdebSEqmyRjailVa
 xisluGWdaUHNgleuVangMayhSmZsvQRQ0Y0AugyZR7fZVlGYF/hYJYwnv7WksLtZRPeW
 M9hnKztRktOObOPxp3fuur/JzOrEL8xoaHUYmyJMxKmwMTq2BZbRuI91zmIHt8nC7M/Q
 ncaMrUuYf7OxZifqVeoegdRXg2ILxqiwdC9Ar9zMogPUxvecDK1FuBUWunchdryuz3La
 JtqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=d730QTcA12WB0FxkhM0n+vEOwpHIgTa3YH56dqVvnac=;
 b=EgTjz5zv+tVaIguWOyelaTcHYgvSFnMlxCLq3CTG99dgr1SHwHBd6Jg2dmzXMZlynO
 KvTrxWOyqngfZewYFCXfFlW0XKqjmu3VVkRGpvdtIr6clViaWUr3mj+lkvklZ7XvRjIw
 NTkrhpfOfFF3+4tm+IXBmoGzjonY8UZVZgnonVzcOyhr2NCOZhr13YU860owQ9xY1ENq
 w51SAMFBq2uACz0gMHklMtZFHixosQVZXhoXfzZHRdenvP4rIZf1f6WEM45lAkT1CyVl
 AGnm5aU3IaVn/jRBkjqsmUMECqbHLhf/jEjt9U3d1XjFfEOE6vGheNBQm0iOsZk71dFD
 lerA==
X-Gm-Message-State: AOAM532xyJZ+l/T1TFstb2nGnrUCTWswBNLUN1/4f34A64Mh5DNDvZVl
 T8pPMMqQjxmaAFyO60QNuH+JV58vIDo=
X-Google-Smtp-Source: ABdhPJwijaRgtkvA1rTTTYnmmkrv5+ub1+0ElId0x1Nfo9cuEK8BbS8nqDasRqB7IOjx9Y4kXNMbaA==
X-Received: by 2002:a5d:6846:: with SMTP id o6mr12539577wrw.327.1632497492228; 
 Fri, 24 Sep 2021 08:31:32 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 u25sm9902248wmm.5.2021.09.24.08.31.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 24 Sep 2021 08:31:31 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Date: Fri, 24 Sep 2021 17:31:01 +0200
Message-Id: <20210924153113.2159-15-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210924153113.2159-1-christian.koenig@amd.com>
References: <20210924153113.2159-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 15/27] drm/scheduler: use new iterator in
 drm_sched_job_add_implicit_dependencies v2
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

U2ltcGxpZnlpbmcgdGhlIGNvZGUgYSBiaXQuCgp2MjogdXNlIGRtYV9yZXN2X2Zvcl9lYWNoX2Zl
bmNlCgpTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFt
ZC5jb20+ClJldmlld2VkLWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGZmd2xsLmNo
PgotLS0KIGRyaXZlcnMvZ3B1L2RybS9zY2hlZHVsZXIvc2NoZWRfbWFpbi5jIHwgMjYgKysrKysr
LS0tLS0tLS0tLS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDIw
IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9zY2hlZHVsZXIvc2No
ZWRfbWFpbi5jIGIvZHJpdmVycy9ncHUvZHJtL3NjaGVkdWxlci9zY2hlZF9tYWluLmMKaW5kZXgg
MDQyYzE2YjVkNTRhLi41YmM1Zjc3NWFiZTEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9z
Y2hlZHVsZXIvc2NoZWRfbWFpbi5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9zY2hlZHVsZXIvc2No
ZWRfbWFpbi5jCkBAIC02OTksMzAgKzY5OSwxNiBAQCBpbnQgZHJtX3NjaGVkX2pvYl9hZGRfaW1w
bGljaXRfZGVwZW5kZW5jaWVzKHN0cnVjdCBkcm1fc2NoZWRfam9iICpqb2IsCiAJCQkJCSAgICBz
dHJ1Y3QgZHJtX2dlbV9vYmplY3QgKm9iaiwKIAkJCQkJICAgIGJvb2wgd3JpdGUpCiB7CisJc3Ry
dWN0IGRtYV9yZXN2X2l0ZXIgY3Vyc29yOworCXN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlOwogCWlu
dCByZXQ7Ci0Jc3RydWN0IGRtYV9mZW5jZSAqKmZlbmNlczsKLQl1bnNpZ25lZCBpbnQgaSwgZmVu
Y2VfY291bnQ7Ci0KLQlpZiAoIXdyaXRlKSB7Ci0JCXN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlID0g
ZG1hX3Jlc3ZfZ2V0X2V4Y2xfdW5sb2NrZWQob2JqLT5yZXN2KTsKLQotCQlyZXR1cm4gZHJtX3Nj
aGVkX2pvYl9hZGRfZGVwZW5kZW5jeShqb2IsIGZlbmNlKTsKLQl9Ci0KLQlyZXQgPSBkbWFfcmVz
dl9nZXRfZmVuY2VzKG9iai0+cmVzdiwgTlVMTCwgJmZlbmNlX2NvdW50LCAmZmVuY2VzKTsKLQlp
ZiAocmV0IHx8ICFmZW5jZV9jb3VudCkKLQkJcmV0dXJuIHJldDsKIAotCWZvciAoaSA9IDA7IGkg
PCBmZW5jZV9jb3VudDsgaSsrKSB7Ci0JCXJldCA9IGRybV9zY2hlZF9qb2JfYWRkX2RlcGVuZGVu
Y3koam9iLCBmZW5jZXNbaV0pOworCWRtYV9yZXN2X2Zvcl9lYWNoX2ZlbmNlKCZjdXJzb3IsIG9i
ai0+cmVzdiwgd3JpdGUsIGZlbmNlKSB7CisJCXJldCA9IGRybV9zY2hlZF9qb2JfYWRkX2RlcGVu
ZGVuY3koam9iLCBmZW5jZSk7CiAJCWlmIChyZXQpCi0JCQlicmVhazsKKwkJCXJldHVybiByZXQ7
CiAJfQotCi0JZm9yICg7IGkgPCBmZW5jZV9jb3VudDsgaSsrKQotCQlkbWFfZmVuY2VfcHV0KGZl
bmNlc1tpXSk7Ci0Ja2ZyZWUoZmVuY2VzKTsKLQlyZXR1cm4gcmV0OworCXJldHVybiAwOwogfQog
RVhQT1JUX1NZTUJPTChkcm1fc2NoZWRfam9iX2FkZF9pbXBsaWNpdF9kZXBlbmRlbmNpZXMpOwog
Ci0tIAoyLjI1LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJv
Lm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0t
c2lnCg==
