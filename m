Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id D670445A556
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 23 Nov 2021 15:21:59 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A449362169
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 23 Nov 2021 14:21:58 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 7377C62A45; Tue, 23 Nov 2021 14:21:55 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id ADD8962CFB;
	Tue, 23 Nov 2021 14:21:50 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 09A4462170
 for <linaro-mm-sig@lists.linaro.org>; Tue, 23 Nov 2021 14:21:26 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 7802462421; Tue, 23 Nov 2021 14:21:25 +0000 (UTC)
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com
 [209.85.221.54])
 by lists.linaro.org (Postfix) with ESMTPS id 7D53B62072
 for <linaro-mm-sig@lists.linaro.org>; Tue, 23 Nov 2021 14:21:22 +0000 (UTC)
Received: by mail-wr1-f54.google.com with SMTP id s13so39317173wrb.3
 for <linaro-mm-sig@lists.linaro.org>; Tue, 23 Nov 2021 06:21:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=JsZbCHHc39IwzipI/I2HHPgu845k5tKZQFQyhwuStgA=;
 b=IX0TjWXBUPhObIl0cCO8dd0jzSFtS894HIT0F0Z2KMoXPbPouWGDfaIF9A90NJvHIG
 pG8AReYdr0nH8qXNW/1LkNgroSUdWQMSCqVKUr9tE9juMhxaCvlmJd2UxRqUpqScC4a3
 S5j+/n4i1Lvpo7g4EnUHWXWwoh3sn3FfYbFoc5QVtysddljxokR8se+z2dnur3rJsO5P
 rMQ+sv8zYIOURRTl97xDQkAb9syxslZW+OSAwCQaDzg5ZIxDxD18wbhNTF6sjoZzLd4a
 QSifb5ykd7eS9CdVSflB/q5lkoLI7s9FUfLrX0uy0bkAbrrufZq4PiQjJWfUIBXHnwuf
 eeTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=JsZbCHHc39IwzipI/I2HHPgu845k5tKZQFQyhwuStgA=;
 b=0tgYm+H/l6VaS5pi743T0PMK4RFdYL7XIZSZwXNSIOJDDVhpQq3BSl/8bRghy2j3Hh
 hdgyPxwK6/nCreC0DeVKnGSsylwYjpZyrjwNonMR/W2rga0xeal6wduwjEbNO3TxmPzy
 Xt2TFfZET/tSC3WeH757DyMAH/sYXxmvHTwIPN/6lFLkDA4QnpNtjMRWkpkJ28yGo0Vw
 DyWtA/flcruEFCT5a0gnm4CMW1bd9LinSVvWOP4LSk5rzkmUSVuXySq4Tf6IEkpEkAC/
 ocuDV+HpU7qPPpaVddkgF8aYGpGmqK9WZ7YmTI6p+84ecjP3zUbXioijPor/mGVIbRS/
 uIzg==
X-Gm-Message-State: AOAM5305dRIVXlrQwAe0ur0OnRlo4LT0qmfZ2lh88Qtk2PXycj91ApSf
 HJ0zG7BhcbcxG+Si3Vykzrc=
X-Google-Smtp-Source: ABdhPJz/nc1WFMdvHu4CFDHPlz97bSqoSpO6wUDq9ZW9KJvprUNgLFbMxPH8+ZwGrMQkSi2yRX9w9A==
X-Received: by 2002:a5d:58f9:: with SMTP id f25mr7948234wrd.206.1637677281357; 
 Tue, 23 Nov 2021 06:21:21 -0800 (PST)
Received: from abel.fritz.box (p57b0b77b.dip0.t-ipconnect.de. [87.176.183.123])
 by smtp.gmail.com with ESMTPSA id t8sm1645928wmq.32.2021.11.23.06.21.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 23 Nov 2021 06:21:21 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: sumit.semwal@linaro.org,
	daniel@ffwll.ch
Date: Tue, 23 Nov 2021 15:20:48 +0100
Message-Id: <20211123142111.3885-4-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211123142111.3885-1-christian.koenig@amd.com>
References: <20211123142111.3885-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 03/26] dma-buf: make fence mandatory for
 dma_resv_add_excl_fence
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
Cc: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

Q2FsbGluZyBkbWFfcmVzdl9hZGRfZXhjbF9mZW5jZSgpIHdpdGggdGhlIGZlbmNlIGFzIE5VTEwg
YW5kIGV4cGVjdGluZwp0aGF0IHRoYXQgdGhpcyBmcmVlcyB1cCB0aGUgZmVuY2VzIGlzIHNpbXBs
eSBhYnVzZSBvZiB0aGUgaW50ZXJuYWxzIG9mCnRoZSBkbWFfcmVzdiBvYmplY3QuCgpSZXdvcmsg
aG93IHBydW5pbmcgZmVuY2VzIHdvcmtzIGFuZCBtYWtlIHRoZSBmZW5jZSBwYXJhbWV0ZXIgbWFu
ZGF0b3J5LgoKU2lnbmVkLW9mZi1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5p
Z0BhbWQuY29tPgotLS0KIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtcmVzdi5jIHwgMzkgKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKy0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAzNSBpbnNlcnRp
b25zKCspLCA0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEt
cmVzdi5jIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1yZXN2LmMKaW5kZXggZjY0OTllODc5NjNjLi5l
NjI3YTQyNzRmZjYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtcmVzdi5jCisrKyBi
L2RyaXZlcnMvZG1hLWJ1Zi9kbWEtcmVzdi5jCkBAIC05Niw2ICs5NiwzNCBAQCBzdGF0aWMgdm9p
ZCBkbWFfcmVzdl9saXN0X2ZyZWUoc3RydWN0IGRtYV9yZXN2X2xpc3QgKmxpc3QpCiAJa2ZyZWVf
cmN1KGxpc3QsIHJjdSk7CiB9CiAKKy8qKgorICogZG1hX3Jlc3ZfbGlzdF9wcnVuZSAtIGRyb3Ag
YWxsIHNpZ25hbGVkIGZlbmNlcworICogQGxpc3Q6IGxpc3QgdG8gY2hlY2sgZm9yIHNpZ25hbGVk
IGZlbmNlcworICogQG9iajogZG1hX3Jlc3Ygb2JqZWN0IGZvciBsb2NrZGVwCisgKgorICogUmVw
bGFjZSBhbGwgdGhlIHNpZ25hbGVkIGZlbmNlcyB3aXRoIHRoZSBzdHViIGZlbmNlIHRvIGZyZWUg
dGhlbSB1cC4KKyAqLworc3RhdGljIHZvaWQgZG1hX3Jlc3ZfbGlzdF9wcnVuZShzdHJ1Y3QgZG1h
X3Jlc3ZfbGlzdCAqbGlzdCwKKwkJCQlzdHJ1Y3QgZG1hX3Jlc3YgKm9iaikKK3sKKwl1bnNpZ25l
ZCBpbnQgaTsKKworCWlmICghbGlzdCkKKwkJcmV0dXJuOworCisJZm9yIChpID0gMDsgaSA8IGxp
c3QtPnNoYXJlZF9jb3VudDsgKytpKSB7CisJCXN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlOworCisJ
CWZlbmNlID0gcmN1X2RlcmVmZXJlbmNlX3Byb3RlY3RlZChsaXN0LT5zaGFyZWRbaV0sCisJCQkJ
CQkgIGRtYV9yZXN2X2hlbGQob2JqKSk7CisJCWlmICghZG1hX2ZlbmNlX2lzX3NpZ25hbGVkKGZl
bmNlKSkKKwkJCWNvbnRpbnVlOworCisJCVJDVV9JTklUX1BPSU5URVIobGlzdC0+c2hhcmVkW2ld
LCBkbWFfZmVuY2VfZ2V0X3N0dWIoKSk7CisJCWRtYV9mZW5jZV9wdXQoZmVuY2UpOworCX0KK30K
KwogLyoqCiAgKiBkbWFfcmVzdl9pbml0IC0gaW5pdGlhbGl6ZSBhIHJlc2VydmF0aW9uIG9iamVj
dAogICogQG9iajogdGhlIHJlc2VydmF0aW9uIG9iamVjdApAQCAtMzA1LDggKzMzMyw3IEBAIHZv
aWQgZG1hX3Jlc3ZfYWRkX2V4Y2xfZmVuY2Uoc3RydWN0IGRtYV9yZXN2ICpvYmosIHN0cnVjdCBk
bWFfZmVuY2UgKmZlbmNlKQogCWlmIChvbGQpCiAJCWkgPSBvbGQtPnNoYXJlZF9jb3VudDsKIAot
CWlmIChmZW5jZSkKLQkJZG1hX2ZlbmNlX2dldChmZW5jZSk7CisJZG1hX2ZlbmNlX2dldChmZW5j
ZSk7CiAKIAl3cml0ZV9zZXFjb3VudF9iZWdpbigmb2JqLT5zZXEpOwogCS8qIHdyaXRlX3NlcWNv
dW50X2JlZ2luIHByb3ZpZGVzIHRoZSBuZWNlc3NhcnkgbWVtb3J5IGJhcnJpZXIgKi8KQEAgLTMz
NCw4ICszNjEsMTIgQEAgdm9pZCBkbWFfcmVzdl9wcnVuZShzdHJ1Y3QgZG1hX3Jlc3YgKm9iaikK
IHsKIAlkbWFfcmVzdl9hc3NlcnRfaGVsZChvYmopOwogCi0JaWYgKGRtYV9yZXN2X3Rlc3Rfc2ln
bmFsZWQob2JqLCB0cnVlKSkKLQkJZG1hX3Jlc3ZfYWRkX2V4Y2xfZmVuY2Uob2JqLCBOVUxMKTsK
Kwl3cml0ZV9zZXFjb3VudF9iZWdpbigmb2JqLT5zZXEpOworCWlmIChvYmotPmZlbmNlX2V4Y2wg
JiYgZG1hX2ZlbmNlX2lzX3NpZ25hbGVkKG9iai0+ZmVuY2VfZXhjbCkpCisJCWRtYV9mZW5jZV9w
dXQocmN1X3JlcGxhY2VfcG9pbnRlcihvYmotPmZlbmNlX2V4Y2wsIE5VTEwsCisJCQkJCQkgIGRt
YV9yZXN2X2hlbGQob2JqKSkpOworCWRtYV9yZXN2X2xpc3RfcHJ1bmUoZG1hX3Jlc3Zfc2hhcmVk
X2xpc3Qob2JqKSwgb2JqKTsKKwl3cml0ZV9zZXFjb3VudF9lbmQoJm9iai0+c2VxKTsKIH0KIEVY
UE9SVF9TWU1CT0woZG1hX3Jlc3ZfcHJ1bmVfdW5sb2NrZWQpOwogCi0tIAoyLjI1LjEKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcg
bWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3Rz
LmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
