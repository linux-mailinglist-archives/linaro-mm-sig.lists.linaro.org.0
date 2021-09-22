Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 926354144DB
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Sep 2021 11:12:25 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 04495623EB
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Sep 2021 09:12:22 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 7285E619C8; Wed, 22 Sep 2021 09:12:12 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A597667E37;
	Wed, 22 Sep 2021 09:12:07 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 0941E622E7
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Sep 2021 09:11:09 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id EFD2C62439; Wed, 22 Sep 2021 09:11:05 +0000 (UTC)
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com
 [209.85.221.42])
 by lists.linaro.org (Postfix) with ESMTPS id 175FB6043D
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Sep 2021 09:11:01 +0000 (UTC)
Received: by mail-wr1-f42.google.com with SMTP id q26so4654438wrc.7
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Sep 2021 02:11:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=d730QTcA12WB0FxkhM0n+vEOwpHIgTa3YH56dqVvnac=;
 b=j90J/7JUL45MnI4Ak6Zob/9DvPF7tRT9c0kTqlvHmtQqcmG72bRfc7vEybu+f/lGlN
 XGz+AvKTZ9qloKeXOmGC9fPo5NQeTQAayLBopocjrNOrASSjtylOpH8pQNA+khn5wBfn
 DMN2CafDZ4aQl7yb3qHndbvsIk4CKhr/BPf6mdv+m9CAt5nu7SGMmXaqgTHgU1YE4ksb
 dEOYuFLGk/DJ/ZVdrGH5Du7o5bqY7C+Btl/Wfdov3f/1PpNTEGcbsPYysxuXYc+AOwNm
 gZEVj5EKY/0YRhx6o2WO0fYn5cDtf261049prYNT9Tddqh+svLWG/mDmm96Klbg6eBny
 UFmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=d730QTcA12WB0FxkhM0n+vEOwpHIgTa3YH56dqVvnac=;
 b=snUiqBOCMQWhNTS95sXap+dvtQiJaP/LqE9Nk7Rug9cq1shdhmIsURjN8mWaSyiLFe
 mZvaXigdHtIiw3jFe17TbT45Oofl1Kx4kyHG3DpIej+0QEyDplG8gQVhcjTyVnWBkFD6
 eUgfQ22tFfkQ9h/sHHcAa4FtZT6qsjaN/KgC0y6qmgMbbgwVM9PR77QjMWbl1V7mNIJg
 B910DnDnX/UShn7W3KMYysqSee2rPagY5BDrgI9HmyHpnEGVg/i/GI1lbVgGvTNHnzv2
 /lhaPiOMSK5FG7zSuF8P1JCSVQQ0TDw6RXaQQhw6K+3UXvnkaMJ713GhTzF5HGuwwGv4
 iTbg==
X-Gm-Message-State: AOAM530jK5hEW75UmPc2QPd1dKyMlJ+3bPKIuvvoENEketAejyC9iCdZ
 WwBivlnfa4cspCB0NMG+X06iRSYRtyo=
X-Google-Smtp-Source: ABdhPJwaobByNyerA5LioHPKRWh238hsBS9x3PdyiMb0uZTKHX40+PdO2QBIO1h46X7VKKESUTYfQQ==
X-Received: by 2002:a05:6000:156e:: with SMTP id
 14mr29312311wrz.393.1632301859163; 
 Wed, 22 Sep 2021 02:10:59 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 r25sm1535515wra.76.2021.09.22.02.10.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Sep 2021 02:10:58 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Date: Wed, 22 Sep 2021 11:10:30 +0200
Message-Id: <20210922091044.2612-13-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210922091044.2612-1-christian.koenig@amd.com>
References: <20210922091044.2612-1-christian.koenig@amd.com>
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
