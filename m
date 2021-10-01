Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C89141EAA3
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  1 Oct 2021 12:08:33 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1CEC766C11
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  1 Oct 2021 10:08:31 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 0C1B663291; Fri,  1 Oct 2021 10:08:21 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1735863524;
	Fri,  1 Oct 2021 10:08:17 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 0C9F763390
 for <linaro-mm-sig@lists.linaro.org>; Fri,  1 Oct 2021 10:06:45 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 8248060C37; Fri,  1 Oct 2021 10:06:32 +0000 (UTC)
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com
 [209.85.221.53])
 by lists.linaro.org (Postfix) with ESMTPS id 4E48E6241C
 for <linaro-mm-sig@lists.linaro.org>; Fri,  1 Oct 2021 10:06:28 +0000 (UTC)
Received: by mail-wr1-f53.google.com with SMTP id s21so14582979wra.7
 for <linaro-mm-sig@lists.linaro.org>; Fri, 01 Oct 2021 03:06:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=d730QTcA12WB0FxkhM0n+vEOwpHIgTa3YH56dqVvnac=;
 b=aLz6htSFtsiJnmZk6iPAAcargupnOFJsx0x5S20/nkp2OEcsstBr3b46ddds+UNSB+
 kPQgf7O5UHAQyWsoRD4CbVGZyrHxHCY+V5qBwggSJkqt7dQjdnjQ2v287HDIUs/smbiQ
 zWsSDNB8ooRKxv60yqwYZHnzZYbeocAIJnmG6ELZtaJHUnCV7jlPCtjjHcrYzhS9b+Ed
 FNilwvj+wOLBK/f5gTC1VDaltB0FO9qldFrYqbU4MWQRycQaH/qWFCutT7+tH7BOw4AT
 OH/y7bZyJSY8mKvGlf3p2zcgvJiDMV4G9LDbbYWf4WXP2N79Gh9uBgaXT3uhY4WnKWSK
 HI8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=d730QTcA12WB0FxkhM0n+vEOwpHIgTa3YH56dqVvnac=;
 b=eo9H77RgcQgYv+26iQZNBnf5fXNChf27dbFK/iiXcL97u+sTYEeGg2ndznjfCC6mFR
 8guW93ZW1cLrcxE2EviKpvdoILqfK3w4ZiicLL/VnhobVFMNze1j7jGz/0MoFIccOgQu
 rRqTzgQLHf4RYnhyKOkFPrDywz1DrLT+e5PogozsuC3bACTyXqmZYWcfB/7bq8ukwjxB
 8V0TSrt/VsaobcrXa1mYEjOZaBEt8K7H6FYgJcXTCMG9jY8X1cVm0vz6RqBLPiUX9SF+
 7HMV1Z8BAJQ6+woYmMIQ2Y/895E/jrxKMoGE2MvMsQxV6OnC+pgTwzepriMXG36CK8fq
 rG3w==
X-Gm-Message-State: AOAM533X7V0/NSfRaA6ETLsFXpGkL6U7JVtiLnvJbFQWv9hB7BFNkaWi
 BBegbAF4yZYfkse9ZoSzyC2E9HFWdCI=
X-Google-Smtp-Source: ABdhPJwgWXQpla7lMGDPPe0fAEP9N6dAexMHV3C4YjWZP22yd+DnwSODgfTN4bxkkGbD2Y6yAclTxg==
X-Received: by 2002:a05:6000:144e:: with SMTP id
 v14mr9975574wrx.228.1633082787356; 
 Fri, 01 Oct 2021 03:06:27 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 v17sm5746069wro.34.2021.10.01.03.06.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 01 Oct 2021 03:06:27 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Date: Fri,  1 Oct 2021 12:05:58 +0200
Message-Id: <20211001100610.2899-17-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211001100610.2899-1-christian.koenig@amd.com>
References: <20211001100610.2899-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 16/28] drm/scheduler: use new iterator in
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
