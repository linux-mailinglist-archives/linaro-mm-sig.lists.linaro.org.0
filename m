Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id A4B13422566
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 Oct 2021 13:39:57 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DD32C6A903
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 Oct 2021 11:39:55 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 8C46D60833; Tue,  5 Oct 2021 11:39:22 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5C9A4610C2;
	Tue,  5 Oct 2021 11:39:17 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id C99CC619D7
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 Oct 2021 11:38:20 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 03F5060F1E; Tue,  5 Oct 2021 11:38:06 +0000 (UTC)
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com
 [209.85.221.48])
 by lists.linaro.org (Postfix) with ESMTPS id 3595D60AAB
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 Oct 2021 11:37:58 +0000 (UTC)
Received: by mail-wr1-f48.google.com with SMTP id e12so16508181wra.4
 for <linaro-mm-sig@lists.linaro.org>; Tue, 05 Oct 2021 04:37:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=SQ++zZ5/yZpkHj9Fw3rhcDISIEh5bldO1ALOtoZPTbI=;
 b=LCvgpUtqtCFxZnEQNDktDxpTf4dbhSEuao8ulRT0SvsaoA8Q7G6vuvDJm0ATWn380e
 ph7rlM/02ybXRGIALicADHzImLyuITvggahikLgwr+WnchjLZJwwjNlcS/C7pYXMHLQa
 WJ5lDXq6iXbCeW4mD9We3x3wSLiofrbesUFcdlp5ss2j4Rf16009jjr+FVx9AII3lpeQ
 kNDlruJNyqqiaiEZLINludd1tkyIlWGWVKuW9KTJ9NHtVdeGbdPaVosnxC0edQS7WpE/
 YRlMmi7PwxaKCu/E/uVaRKMHz7b3NhVM9ZujvN2iNYiqJGCverCNmcllaEfuwiD9OkIX
 I6iA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=SQ++zZ5/yZpkHj9Fw3rhcDISIEh5bldO1ALOtoZPTbI=;
 b=dVA2ApudtGMFDEgX3EeYQpXMxMxJj7nw66gWQZfxKZylZOwKP9T79Y680c6MoCje6P
 CthYQVtxTDmvuoDQh8k+U4I/04eWITEyMIwBTU8/3ShQtPr1WrwL4Yk9PC4GRyqMnpbI
 HnBgIRMUyItZCv0PumoR+4ZzlTFIVlodY0ACI3eZBRzMXNFT28TTHFPpsQUGaBSGGz44
 D3IiiPTJ6qQrKl+NCFh5PGeRhxFNiOdOIMi3VpOGQ8gAweLK0SwmraAvE9HlMNagqq7B
 q9Mk82jH/gVuzGENNtJ23nMc/WtPv7ef1gXq7+NPCVmc1JW+J2w0DREV45jpxVFlBtyk
 qHYw==
X-Gm-Message-State: AOAM532qiU1OLO6Re8tuk+y1tzby9RpSJ5CRCA7dzcjhrdRXcM+nB5Y/
 AjA6EXKPRJJR9ujtzMIYmFw7wsMJ1Xs=
X-Google-Smtp-Source: ABdhPJwePTy3csOdl5nEHpPWGGqYgsw75JbeDEP7lumwo4i8kiGor/0gxjulTHy+w9OF8dVoRMX7rA==
X-Received: by 2002:adf:a48f:: with SMTP id g15mr17313160wrb.259.1633433876888; 
 Tue, 05 Oct 2021 04:37:56 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 c5sm1739912wml.9.2021.10.05.04.37.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Oct 2021 04:37:56 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Date: Tue,  5 Oct 2021 13:37:27 +0200
Message-Id: <20211005113742.1101-14-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211005113742.1101-1-christian.koenig@amd.com>
References: <20211005113742.1101-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 13/28] drm/amdgpu: use new iterator in
 amdgpu_vm_prt_fini
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

Tm8gbmVlZCB0byBhY3R1YWxseSBhbGxvY2F0ZSBhbiBhcnJheSBvZiBmZW5jZXMgaGVyZS4KClNp
Z25lZC1vZmYtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4K
LS0tCiBkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfdm0uYyB8IDI2ICsrKysrLS0t
LS0tLS0tLS0tLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCAyMSBk
ZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRn
cHVfdm0uYyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV92bS5jCmluZGV4IDZi
MTVjYWQ3OGRlOS4uZTQyZGQ3OWVkNmY0IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vYW1k
L2FtZGdwdS9hbWRncHVfdm0uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRn
cHVfdm0uYwpAQCAtMjA5MCwzMCArMjA5MCwxNCBAQCBzdGF0aWMgdm9pZCBhbWRncHVfdm1fZnJl
ZV9tYXBwaW5nKHN0cnVjdCBhbWRncHVfZGV2aWNlICphZGV2LAogc3RhdGljIHZvaWQgYW1kZ3B1
X3ZtX3BydF9maW5pKHN0cnVjdCBhbWRncHVfZGV2aWNlICphZGV2LCBzdHJ1Y3QgYW1kZ3B1X3Zt
ICp2bSkKIHsKIAlzdHJ1Y3QgZG1hX3Jlc3YgKnJlc3YgPSB2bS0+cm9vdC5iby0+dGJvLmJhc2Uu
cmVzdjsKLQlzdHJ1Y3QgZG1hX2ZlbmNlICpleGNsLCAqKnNoYXJlZDsKLQl1bnNpZ25lZCBpLCBz
aGFyZWRfY291bnQ7Ci0JaW50IHI7CisJc3RydWN0IGRtYV9yZXN2X2l0ZXIgY3Vyc29yOworCXN0
cnVjdCBkbWFfZmVuY2UgKmZlbmNlOwogCi0JciA9IGRtYV9yZXN2X2dldF9mZW5jZXMocmVzdiwg
JmV4Y2wsICZzaGFyZWRfY291bnQsICZzaGFyZWQpOwotCWlmIChyKSB7Ci0JCS8qIE5vdCBlbm91
Z2ggbWVtb3J5IHRvIGdyYWIgdGhlIGZlbmNlIGxpc3QsIGFzIGxhc3QgcmVzb3J0Ci0JCSAqIGJs
b2NrIGZvciBhbGwgdGhlIGZlbmNlcyB0byBjb21wbGV0ZS4KLQkJICovCi0JCWRtYV9yZXN2X3dh
aXRfdGltZW91dChyZXN2LCB0cnVlLCBmYWxzZSwKLQkJCQkJCSAgICBNQVhfU0NIRURVTEVfVElN
RU9VVCk7Ci0JCXJldHVybjsKLQl9Ci0KLQkvKiBBZGQgYSBjYWxsYmFjayBmb3IgZWFjaCBmZW5j
ZSBpbiB0aGUgcmVzZXJ2YXRpb24gb2JqZWN0ICovCi0JYW1kZ3B1X3ZtX3BydF9nZXQoYWRldik7
Ci0JYW1kZ3B1X3ZtX2FkZF9wcnRfY2IoYWRldiwgZXhjbCk7Ci0KLQlmb3IgKGkgPSAwOyBpIDwg
c2hhcmVkX2NvdW50OyArK2kpIHsKKwlkbWFfcmVzdl9mb3JfZWFjaF9mZW5jZSgmY3Vyc29yLCBy
ZXN2LCB0cnVlLCBmZW5jZSkgeworCQkvKiBBZGQgYSBjYWxsYmFjayBmb3IgZWFjaCBmZW5jZSBp
biB0aGUgcmVzZXJ2YXRpb24gb2JqZWN0ICovCiAJCWFtZGdwdV92bV9wcnRfZ2V0KGFkZXYpOwot
CQlhbWRncHVfdm1fYWRkX3BydF9jYihhZGV2LCBzaGFyZWRbaV0pOworCQlhbWRncHVfdm1fYWRk
X3BydF9jYihhZGV2LCBmZW5jZSk7CiAJfQotCi0Ja2ZyZWUoc2hhcmVkKTsKIH0KIAogLyoqCi0t
IAoyLjI1LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9y
ZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2ln
Cg==
