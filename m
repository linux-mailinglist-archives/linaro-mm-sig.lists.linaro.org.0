Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 3549941389D
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 21 Sep 2021 19:37:46 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 18DEC61523
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 21 Sep 2021 17:37:45 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id C7200619CD; Tue, 21 Sep 2021 17:37:44 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C87C461731;
	Tue, 21 Sep 2021 17:37:40 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 610C162D34
 for <linaro-mm-sig@lists.linaro.org>; Tue, 21 Sep 2021 17:37:21 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 5516761655; Tue, 21 Sep 2021 17:37:17 +0000 (UTC)
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com
 [209.85.221.49])
 by lists.linaro.org (Postfix) with ESMTPS id 743FB632A1
 for <linaro-mm-sig@lists.linaro.org>; Tue, 21 Sep 2021 17:37:14 +0000 (UTC)
Received: by mail-wr1-f49.google.com with SMTP id t7so8355572wrw.13
 for <linaro-mm-sig@lists.linaro.org>; Tue, 21 Sep 2021 10:37:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=d730QTcA12WB0FxkhM0n+vEOwpHIgTa3YH56dqVvnac=;
 b=cDp4X8nEmxvJiGYdGuWZzu8D1TLfgJyLtBQE2jZxeRe5vgCyvEk0LBVxllfDfy39wi
 iqugiMSc9ZfU+mS0MAdxOpTwrE7/cRbkNMWZN20OuQvOB7+unzYuuE0FhY2H7Lg5/guh
 7u6O8TMtWlOqqkWD6pd3r8yA2oRmlDwah0lUM/Q4kBAgRkGD+d5vtv14LtFJgAFqEfDa
 WpFM+ClJZbKdGevGrhvsCriciOhGaN7Pd4EUpYikZR8Yg8BDmSw/9iHIoEdSnnxzDJBo
 E0qfxDgFHtC6LYBDS5i4ryTI/rHlHMT6zo7rju2Vxy5eiC6CdzPnIUVhBAjEjdAGJPTL
 E1AQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=d730QTcA12WB0FxkhM0n+vEOwpHIgTa3YH56dqVvnac=;
 b=fv/yPLl1E1swzexZer84Fk1GMNRoLUvu96cLo8yDOtT5Y3Vw+8ZSEy8xWG+Eu5Tix/
 yX51HCq4Xrr3fhcJ9tFKV3yojbtTsCk9V3QFu7mXmhUdNGd3I1yNBApoGWgDd9yiieb6
 +hu/SRs8RC6R+VehAmx13beNrSHwTR63RCO1PrY0WXUfW0Sd/CCC0XntNns6EhLH+ovg
 dcNqOGWI144lmvJj5EqXQjD4V7Pxb89bXLggFUGxprTzPojWuXf5R3jnYeACxSR8R/Wv
 qyLhA7s0HoLGJslQcbQ2OhIFV0UNhOyomzgYTUC9blUdSusdtGIyVQCDJBfDiMSrXTmL
 BMtQ==
X-Gm-Message-State: AOAM5318FPxOIFu4x0YQmXIEX0N0vBnwIPC7DWLTjtQm+3xjrO9tm8Rj
 llm7RGcZYBEROhS/BR6aoAEzdc+Yom0=
X-Google-Smtp-Source: ABdhPJw/F52P2/JZ97k5+Q1iHrdLYrh6e95FiQ1py0vN9kS3NvlA3/pP1bkc0d6Bi2jIpnxKyrZ+WA==
X-Received: by 2002:a05:6000:1207:: with SMTP id
 e7mr35843869wrx.170.1632245833656; 
 Tue, 21 Sep 2021 10:37:13 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 z13sm23310477wrs.90.2021.09.21.10.37.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Sep 2021 10:37:13 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: ckoenig.leichtzumerken@gmail.com, linaro-mm-sig@lists.linaro.org,
 dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org,
 intel-gfx@lists.freedesktop.org
Date: Tue, 21 Sep 2021 19:36:45 +0200
Message-Id: <20210921173659.246165-12-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210921173659.246165-1-christian.koenig@amd.com>
References: <20210921173659.246165-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 12/26] drm/scheduler: use new iterator in
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
