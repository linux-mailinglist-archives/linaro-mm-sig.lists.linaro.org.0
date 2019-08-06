Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id B2DB5834A5
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  6 Aug 2019 17:02:47 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D305061786
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  6 Aug 2019 15:02:46 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id C57EE617E7; Tue,  6 Aug 2019 15:02:46 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	ip-10-150-125-211.ec2.internal
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3DFF361792;
	Tue,  6 Aug 2019 15:01:46 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id CB3656097D
 for <linaro-mm-sig@lists.linaro.org>; Tue,  6 Aug 2019 15:01:41 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id BEC3D6177D; Tue,  6 Aug 2019 15:01:41 +0000 (UTC)
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by lists.linaro.org (Postfix) with ESMTPS id C95306097D
 for <linaro-mm-sig@lists.linaro.org>; Tue,  6 Aug 2019 15:01:38 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id x4so35065971wrt.6
 for <linaro-mm-sig@lists.linaro.org>; Tue, 06 Aug 2019 08:01:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=AWEQZoXJ7Lv+PikX4O1dFQhLFUVrnvufpDvNejlOGH4=;
 b=Kg+DD2g54mPw35EeKGEo2aR0iir3uTPU9PSf6Y2n5kQdPssgLX6je1LvGMblZT75au
 RJJg86mmOypQoGuAW59MZ/OLWQvCU0Cjz8LuYIQw+cEGTC5dKqe5XQY16eAiFXWVFyW5
 BNqWFrCrBXH07t4cSCQV1kVlCdfN8lgSCeMHZqX8h0nsAgcq/CVxLHRhCAX2i0BSasiQ
 M+1/xsUEtyX9h1pKGrLlSVVW2VIo3NL3zyOX7erXY9EOVuSDBAZuTnpPFFAPbXIBuAqs
 t8h9cPGS6a2LznIxUUFDNSpUorUUAvB2UYaMZLOg3kqguuCJ3Q5/9S15P5e3uL+cbvX3
 cGYQ==
X-Gm-Message-State: APjAAAWuSG06W1w4JxNPx9ATw8gmMsTQOoKyOEcM7rk9GZLp849C5nF4
 3+jRX1ZNOKf7/ynYHBHQYGlcMvCS
X-Google-Smtp-Source: APXvYqxNUff5gRQUSR6MwQ8LIyUILMM1JJ8O1BxsAgqVbIbytaK1nsDoScmjjGF/QXYzyCBYt4MTXA==
X-Received: by 2002:adf:ed8a:: with SMTP id c10mr5498627wro.33.1565103697985; 
 Tue, 06 Aug 2019 08:01:37 -0700 (PDT)
Received: from abel.fritz.box ([2a02:908:1252:fb60:d1e0:fffc:b0e3:c66d])
 by smtp.gmail.com with ESMTPSA id g2sm78766828wmh.0.2019.08.06.08.01.37
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 06 Aug 2019 08:01:37 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: intel-gfx@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 dri-devel@lists.freedesktop.org, chris@chris-wilson.co.uk
Date: Tue,  6 Aug 2019 17:01:29 +0200
Message-Id: <20190806150134.104222-3-christian.koenig@amd.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190806150134.104222-1-christian.koenig@amd.com>
References: <20190806150134.104222-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 3/8] drm/i915: stop using seqcount for fenc
	pruning
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.16
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

QWZ0ZXIgd2FpdGluZyBmb3IgYSByZXNlcnZhdGlvbiBvYmplY3QgdXNlIHJlc2VydmF0aW9uX29i
amVjdF90ZXN0X3NpZ25hbGVkX3JjdQp0byBvcHBvcnR1bmlzdGljYWxseSBwcnVuZSB0aGUgZmVu
Y2VzIG9uIHRoZSBvYmplY3QuCgpUaGlzIGFsbG93cyByZW1vdmFsIG9mIHRoZSBzZXFjb3VudCBo
YW5kbGluZyBpbiB0aGUgcmVzZXJ2YXRpb24gb2JqZWN0LgoKU2lnbmVkLW9mZi1ieTogQ2hyaXN0
aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2dlbS9pOTE1X2dlbV93YWl0LmMgfCAxNCArKysrKy0tLS0tLS0tLQogMSBmaWxlIGNo
YW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgOSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fd2FpdC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ2VtL2k5MTVfZ2VtX3dhaXQuYwppbmRleCAyNmVjNjU3OWI3Y2QuLmZhNDZhNTRiY2JlNyAx
MDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3dhaXQuYworKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fd2FpdC5jCkBAIC0zNSw3ICszNSw2
IEBAIGk5MTVfZ2VtX29iamVjdF93YWl0X3Jlc2VydmF0aW9uKHN0cnVjdCByZXNlcnZhdGlvbl9v
YmplY3QgKnJlc3YsCiAJCQkJIHVuc2lnbmVkIGludCBmbGFncywKIAkJCQkgbG9uZyB0aW1lb3V0
KQogewotCXVuc2lnbmVkIGludCBzZXEgPSBfX3JlYWRfc2VxY291bnRfYmVnaW4oJnJlc3YtPnNl
cSk7CiAJc3RydWN0IGRtYV9mZW5jZSAqZXhjbDsKIAlib29sIHBydW5lX2ZlbmNlcyA9IGZhbHNl
OwogCkBAIC04MywxNSArODIsMTIgQEAgaTkxNV9nZW1fb2JqZWN0X3dhaXRfcmVzZXJ2YXRpb24o
c3RydWN0IHJlc2VydmF0aW9uX29iamVjdCAqcmVzdiwKIAogCS8qCiAJICogT3Bwb3J0dW5pc3Rp
Y2FsbHkgcHJ1bmUgdGhlIGZlbmNlcyBpZmYgd2Uga25vdyB0aGV5IGhhdmUgKmFsbCogYmVlbgot
CSAqIHNpZ25hbGVkIGFuZCB0aGF0IHRoZSByZXNlcnZhdGlvbiBvYmplY3QgaGFzIG5vdCBiZWVu
IGNoYW5nZWQgKGkuZS4KLQkgKiBubyBuZXcgZmVuY2VzIGhhdmUgYmVlbiBhZGRlZCkuCisJICog
c2lnbmFsZWQuCiAJICovCi0JaWYgKHBydW5lX2ZlbmNlcyAmJiAhX19yZWFkX3NlcWNvdW50X3Jl
dHJ5KCZyZXN2LT5zZXEsIHNlcSkpIHsKLQkJaWYgKHJlc2VydmF0aW9uX29iamVjdF90cnlsb2Nr
KHJlc3YpKSB7Ci0JCQlpZiAoIV9fcmVhZF9zZXFjb3VudF9yZXRyeSgmcmVzdi0+c2VxLCBzZXEp
KQotCQkJCXJlc2VydmF0aW9uX29iamVjdF9hZGRfZXhjbF9mZW5jZShyZXN2LCBOVUxMKTsKLQkJ
CXJlc2VydmF0aW9uX29iamVjdF91bmxvY2socmVzdik7Ci0JCX0KKwlpZiAocHJ1bmVfZmVuY2Vz
ICYmIHJlc2VydmF0aW9uX29iamVjdF90cnlsb2NrKHJlc3YpKSB7CisJCWlmIChyZXNlcnZhdGlv
bl9vYmplY3RfdGVzdF9zaWduYWxlZF9yY3UocmVzdiwgdHJ1ZSkpCisJCQlyZXNlcnZhdGlvbl9v
YmplY3RfYWRkX2V4Y2xfZmVuY2UocmVzdiwgTlVMTCk7CisJCXJlc2VydmF0aW9uX29iamVjdF91
bmxvY2socmVzdik7CiAJfQogCiAJcmV0dXJuIHRpbWVvdXQ7Ci0tIAoyLjE3LjEKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFp
bGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxp
bmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
