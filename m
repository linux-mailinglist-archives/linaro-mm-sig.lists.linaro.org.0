Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 04039834A4
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  6 Aug 2019 17:02:13 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 388B36176E
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  6 Aug 2019 15:02:12 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 2BB1361774; Tue,  6 Aug 2019 15:02:12 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	ip-10-150-125-211.ec2.internal
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B647A61772;
	Tue,  6 Aug 2019 15:01:40 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 2C7126097D
 for <linaro-mm-sig@lists.linaro.org>; Tue,  6 Aug 2019 15:01:38 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 21A3461738; Tue,  6 Aug 2019 15:01:38 +0000 (UTC)
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by lists.linaro.org (Postfix) with ESMTPS id 00C2C6097D
 for <linaro-mm-sig@lists.linaro.org>; Tue,  6 Aug 2019 15:01:37 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id n9so63166112wrr.4
 for <linaro-mm-sig@lists.linaro.org>; Tue, 06 Aug 2019 08:01:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=rLPPYENgOoc631NZg5ylujQ9Ww/Oy03mgWH9mA4Vfho=;
 b=VO413pL+79zEN7g+KGwAMdzqbfTMT6/F1KoXWzMmr392z6z8njhE/RMHYZKlyKQnAc
 D9dDdhwjdVUp9Mi5OSzWiWT+lAVgfJEhfd0T1nxumg530BGuCfl2GJdEXst+7ppKRrSs
 cwNQZ8uRPv90dsvJ+b7XPwT8du8JD5HIHyIFs0wpyF8XJ9WJu/m4FAkWxElQ+zeJHZMA
 m+b/3IAb+Ij38KYd4jrtsH6rufRBy000yq8EP2sXD3sMAbKVHPr3H0Lw945evv6IZPVo
 I2EfrZZJfy0VtYV4lY8U9m5FyyGbuhL/7DL0rvx0T2cX39SOjAHls7ArFTNtSNagrzox
 AxeA==
X-Gm-Message-State: APjAAAU0Pl+I1AnRAHUTyN7vOeCYSukRD43iVVU/0iZuYKeIbkRGXGah
 HtUOvFJ/+y2N0Bejyk1Dp10=
X-Google-Smtp-Source: APXvYqz6AcKhVWvcz+ipDVWpv+mwv6WdHOfeRXlIqGfRphZR2R8yUytCJlZ5FKlnzx8bJIHeQOnH1Q==
X-Received: by 2002:a5d:6583:: with SMTP id q3mr5698550wru.184.1565103696222; 
 Tue, 06 Aug 2019 08:01:36 -0700 (PDT)
Received: from abel.fritz.box ([2a02:908:1252:fb60:d1e0:fffc:b0e3:c66d])
 by smtp.gmail.com with ESMTPSA id g2sm78766828wmh.0.2019.08.06.08.01.35
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 06 Aug 2019 08:01:35 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: intel-gfx@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 dri-devel@lists.freedesktop.org, chris@chris-wilson.co.uk
Date: Tue,  6 Aug 2019 17:01:27 +0200
Message-Id: <20190806150134.104222-1-christian.koenig@amd.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 1/8] dma-buf: fix busy wait for new shared
	fences
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

V2hlbiByZXNlcnZhdGlvbl9vYmplY3RfYWRkX3NoYXJlZF9mZW5jZSBpcyByZXBsYWNpbmcgYW4g
b2xkIGZlbmNlIHdpdGggYSBuZXcKb25lIHdlIHNob3VsZCBub3QgZHJvcCB0aGUgb2xkIG9uZSBi
ZWZvcmUgdGhlIG5ldyBvbmUgaXMgaW4gcGxhY2UuCgpPdGhlcndpc2Ugb3RoZXIgY29yZXMgY2Fu
IGJ1c3kgd2FpdCBmb3IgdGhlIG5ldyBvbmUgdG8gYXBwZWFyLgoKU2lnbmVkLW9mZi1ieTogQ2hy
aXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgotLS0KIGRyaXZlcnMvZG1h
LWJ1Zi9yZXNlcnZhdGlvbi5jIHwgMTQgKysrKysrKy0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA3
IGluc2VydGlvbnMoKyksIDcgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEt
YnVmL3Jlc2VydmF0aW9uLmMgYi9kcml2ZXJzL2RtYS1idWYvcmVzZXJ2YXRpb24uYwppbmRleCBj
NzFiODVjOGMxNTkuLmQ1OTIwN2NhNzJkMiAxMDA2NDQKLS0tIGEvZHJpdmVycy9kbWEtYnVmL3Jl
c2VydmF0aW9uLmMKKysrIGIvZHJpdmVycy9kbWEtYnVmL3Jlc2VydmF0aW9uLmMKQEAgLTE5Niw2
ICsxOTYsNyBAQCB2b2lkIHJlc2VydmF0aW9uX29iamVjdF9hZGRfc2hhcmVkX2ZlbmNlKHN0cnVj
dCByZXNlcnZhdGlvbl9vYmplY3QgKm9iaiwKIAkJCQkJIHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNl
KQogewogCXN0cnVjdCByZXNlcnZhdGlvbl9vYmplY3RfbGlzdCAqZm9iajsKKwlzdHJ1Y3QgZG1h
X2ZlbmNlICpvbGQ7CiAJdW5zaWduZWQgaW50IGksIGNvdW50OwogCiAJZG1hX2ZlbmNlX2dldChm
ZW5jZSk7CkBAIC0yMDksMTggKzIxMCwxNiBAQCB2b2lkIHJlc2VydmF0aW9uX29iamVjdF9hZGRf
c2hhcmVkX2ZlbmNlKHN0cnVjdCByZXNlcnZhdGlvbl9vYmplY3QgKm9iaiwKIAl3cml0ZV9zZXFj
b3VudF9iZWdpbigmb2JqLT5zZXEpOwogCiAJZm9yIChpID0gMDsgaSA8IGNvdW50OyArK2kpIHsK
LQkJc3RydWN0IGRtYV9mZW5jZSAqb2xkX2ZlbmNlOwogCi0JCW9sZF9mZW5jZSA9IHJjdV9kZXJl
ZmVyZW5jZV9wcm90ZWN0ZWQoZm9iai0+c2hhcmVkW2ldLAotCQkJCQkJICAgICAgcmVzZXJ2YXRp
b25fb2JqZWN0X2hlbGQob2JqKSk7Ci0JCWlmIChvbGRfZmVuY2UtPmNvbnRleHQgPT0gZmVuY2Ut
PmNvbnRleHQgfHwKLQkJICAgIGRtYV9mZW5jZV9pc19zaWduYWxlZChvbGRfZmVuY2UpKSB7Ci0J
CQlkbWFfZmVuY2VfcHV0KG9sZF9mZW5jZSk7CisJCW9sZCA9IHJjdV9kZXJlZmVyZW5jZV9wcm90
ZWN0ZWQoZm9iai0+c2hhcmVkW2ldLAorCQkJCQkJcmVzZXJ2YXRpb25fb2JqZWN0X2hlbGQob2Jq
KSk7CisJCWlmIChvbGQtPmNvbnRleHQgPT0gZmVuY2UtPmNvbnRleHQgfHwKKwkJICAgIGRtYV9m
ZW5jZV9pc19zaWduYWxlZChvbGQpKQogCQkJZ290byByZXBsYWNlOwotCQl9CiAJfQogCiAJQlVH
X09OKGZvYmotPnNoYXJlZF9jb3VudCA+PSBmb2JqLT5zaGFyZWRfbWF4KTsKKwlvbGQgPSBOVUxM
OwogCWNvdW50Kys7CiAKIHJlcGxhY2U6CkBAIC0yMzAsNiArMjI5LDcgQEAgdm9pZCByZXNlcnZh
dGlvbl9vYmplY3RfYWRkX3NoYXJlZF9mZW5jZShzdHJ1Y3QgcmVzZXJ2YXRpb25fb2JqZWN0ICpv
YmosCiAKIAl3cml0ZV9zZXFjb3VudF9lbmQoJm9iai0+c2VxKTsKIAlwcmVlbXB0X2VuYWJsZSgp
OworCWRtYV9mZW5jZV9wdXQob2xkKTsKIH0KIEVYUE9SVF9TWU1CT0wocmVzZXJ2YXRpb25fb2Jq
ZWN0X2FkZF9zaGFyZWRfZmVuY2UpOwogCi0tIAoyLjE3LjEKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0Ckxp
bmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
