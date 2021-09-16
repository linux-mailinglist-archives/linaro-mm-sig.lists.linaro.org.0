Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id BE2CF40D8CD
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Sep 2021 13:31:51 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AA27369CCC
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Sep 2021 11:31:50 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 40814630F1; Thu, 16 Sep 2021 11:31:40 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6A1EE63413;
	Thu, 16 Sep 2021 11:31:36 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 08E636341F
 for <linaro-mm-sig@lists.linaro.org>; Thu, 16 Sep 2021 11:31:08 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id F0F8A62CF7; Thu, 16 Sep 2021 11:30:58 +0000 (UTC)
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com
 [209.85.221.41])
 by lists.linaro.org (Postfix) with ESMTPS id E4B2B6362A
 for <linaro-mm-sig@lists.linaro.org>; Thu, 16 Sep 2021 11:30:54 +0000 (UTC)
Received: by mail-wr1-f41.google.com with SMTP id q11so8912625wrr.9
 for <linaro-mm-sig@lists.linaro.org>; Thu, 16 Sep 2021 04:30:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=cxJJJSDTCra1CfnYbs8O9yM7o+tTKEbenryub8bPxkg=;
 b=UHV5dYRsTneue6sR2lXOMtMnnszWRzQ/QgM2uyVbHfRIsg0V+/mU68kjhEYlzAB0rI
 nh4eiCEGCrFPoOAWytHogtseepDsKCABfjnnvsCGQ9/rYqSaTaLkdI9DXngxupG7ubfg
 oakRwWh9bvS0srZ8WP/2VUCmMrrrtHrm4XKy09c54wBlc+/+pIKh8UwpSGamnXFv0Hpz
 FENScW02c+9JPp8AwoAmagniP9mHm3GJQKUiPmRLUc2nWUKn/Br++shaUuP7CedwzcT8
 m/llPq+aDUS1jqqIeQaZjPOyFB4jOicrFvM9E2CsjhwSy1pBAkmg/61iOGvBYCmG/B0Q
 8KuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=cxJJJSDTCra1CfnYbs8O9yM7o+tTKEbenryub8bPxkg=;
 b=5HE3P+LF2prMsYvQqLFGGM7xQpThvp8dK0dwBc3D2lq/ZeHklnw1aXrrwv4euR/CPk
 24f4Mhkgms0z+pplWY0aTP2r3Wd7xodPmaH2wSVJp6r0ldvY5M/UE8V08b1D5pn+ldR+
 Nb/kUvkRDgVEsa85l1qAIEwUTxKfhTExOHemWmLV2V0UIHlEfrwED708lvFKZvWTvlhd
 CMRMzwfzHqxQ0+6dQSk/9nZjl6MJk5Oooawk369gK7/own6jrKsAtjeVZX3uWDmGG+Fo
 unvbfMcnxOMJyt8wTjx7LsAPHArN6Ib1tmHlNn8DqPtIMDvnf5k0cZbgc5AWOowRAq06
 L9Kg==
X-Gm-Message-State: AOAM531zHmJLxbEfxb2BbDDmWQjHpqEx+cXiu1KwcaGkE141IQRP4RE+
 MZz2d9Os4aozQb6ufCWNFmbIPtmTdpjOEvnC
X-Google-Smtp-Source: ABdhPJyzOq64SeC5x+VItbC5K1NTXS+pYXcHXULfFOBsvENWjCaq/UO38GedGwHkvqw4YdrRI4rOng==
X-Received: by 2002:a05:6000:1379:: with SMTP id
 q25mr5456718wrz.280.1631791853981; 
 Thu, 16 Sep 2021 04:30:53 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 c17sm3803674wrn.54.2021.09.16.04.30.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Sep 2021 04:30:53 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Date: Thu, 16 Sep 2021 13:30:25 +0200
Message-Id: <20210916113042.3631-10-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210916113042.3631-1-christian.koenig@amd.com>
References: <20210916113042.3631-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 09/26] drm/amdgpu: use new iterator in
 amdgpu_ttm_bo_eviction_valuable
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

U2ltcGxpZnlpbmcgdGhlIGNvZGUgYSBiaXQuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2
bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2FtZC9h
bWRncHUvYW1kZ3B1X3R0bS5jIHwgMTQgKysrKy0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA0
IGluc2VydGlvbnMoKyksIDEwIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV90dG0uYyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1
L2FtZGdwdV90dG0uYwppbmRleCAxMTI5ZTE3ZTlmMDkuLmIzODU5YzhkZWQ4NSAxMDA2NDQKLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3R0bS5jCisrKyBiL2RyaXZlcnMv
Z3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV90dG0uYwpAQCAtMTMzMiwxMCArMTMzMiw5IEBAIHN0
YXRpYyBib29sIGFtZGdwdV90dG1fYm9fZXZpY3Rpb25fdmFsdWFibGUoc3RydWN0IHR0bV9idWZm
ZXJfb2JqZWN0ICpibywKIAkJCQkJICAgIGNvbnN0IHN0cnVjdCB0dG1fcGxhY2UgKnBsYWNlKQog
ewogCXVuc2lnbmVkIGxvbmcgbnVtX3BhZ2VzID0gYm8tPnJlc291cmNlLT5udW1fcGFnZXM7CisJ
c3RydWN0IGRtYV9yZXN2X2l0ZXIgcmVzdl9jdXJzb3I7CiAJc3RydWN0IGFtZGdwdV9yZXNfY3Vy
c29yIGN1cnNvcjsKLQlzdHJ1Y3QgZG1hX3Jlc3ZfbGlzdCAqZmxpc3Q7CiAJc3RydWN0IGRtYV9m
ZW5jZSAqZjsKLQlpbnQgaTsKIAogCS8qIFN3YXBvdXQ/ICovCiAJaWYgKGJvLT5yZXNvdXJjZS0+
bWVtX3R5cGUgPT0gVFRNX1BMX1NZU1RFTSkKQEAgLTEzNDksMTQgKzEzNDgsOSBAQCBzdGF0aWMg
Ym9vbCBhbWRncHVfdHRtX2JvX2V2aWN0aW9uX3ZhbHVhYmxlKHN0cnVjdCB0dG1fYnVmZmVyX29i
amVjdCAqYm8sCiAJICogSWYgdHJ1ZSwgdGhlbiByZXR1cm4gZmFsc2UgYXMgYW55IEtGRCBwcm9j
ZXNzIG5lZWRzIGFsbCBpdHMgQk9zIHRvCiAJICogYmUgcmVzaWRlbnQgdG8gcnVuIHN1Y2Nlc3Nm
dWxseQogCSAqLwotCWZsaXN0ID0gZG1hX3Jlc3Zfc2hhcmVkX2xpc3QoYm8tPmJhc2UucmVzdik7
Ci0JaWYgKGZsaXN0KSB7Ci0JCWZvciAoaSA9IDA7IGkgPCBmbGlzdC0+c2hhcmVkX2NvdW50OyAr
K2kpIHsKLQkJCWYgPSByY3VfZGVyZWZlcmVuY2VfcHJvdGVjdGVkKGZsaXN0LT5zaGFyZWRbaV0s
Ci0JCQkJZG1hX3Jlc3ZfaGVsZChiby0+YmFzZS5yZXN2KSk7Ci0JCQlpZiAoYW1ka2ZkX2ZlbmNl
X2NoZWNrX21tKGYsIGN1cnJlbnQtPm1tKSkKLQkJCQlyZXR1cm4gZmFsc2U7Ci0JCX0KKwlkbWFf
cmVzdl9mb3JfZWFjaF9mZW5jZShiby0+YmFzZS5yZXN2LCAmcmVzdl9jdXJzb3IsIHRydWUsIGYp
IHsKKwkJaWYgKGFtZGtmZF9mZW5jZV9jaGVja19tbShmLCBjdXJyZW50LT5tbSkpCisJCQlyZXR1
cm4gZmFsc2U7CiAJfQogCiAJc3dpdGNoIChiby0+cmVzb3VyY2UtPm1lbV90eXBlKSB7Ci0tIAoy
LjI1LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpo
dHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
