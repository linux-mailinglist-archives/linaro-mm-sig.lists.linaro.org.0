Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id DEF34422542
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 Oct 2021 13:38:32 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A070260B37
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 Oct 2021 11:38:24 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id F0A5861516; Tue,  5 Oct 2021 11:38:17 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9AAC662CF6;
	Tue,  5 Oct 2021 11:38:09 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 039E7604FD
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 Oct 2021 11:37:50 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id F38696056F; Tue,  5 Oct 2021 11:37:49 +0000 (UTC)
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com
 [209.85.221.54])
 by lists.linaro.org (Postfix) with ESMTPS id DD0E46055A
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 Oct 2021 11:37:47 +0000 (UTC)
Received: by mail-wr1-f54.google.com with SMTP id k7so36614884wrd.13
 for <linaro-mm-sig@lists.linaro.org>; Tue, 05 Oct 2021 04:37:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=a5eLsCDG4D/gZwEvJUAlIVf5UAIyr4g7ytzcN27L37E=;
 b=AF0HqJwcvUD7hyU50rUuoCrMxkSQzdV9xYZyTUjsQ4fvLjVoT1gt6lqd+TdWEGZlmq
 zhlPnvXkmPtIH6YTFYR8h/NvjAzwbeAxppvLCSChf20gJJJ4OPW38aA6vkA095J/4+pq
 bACXCLCzUNrv0jCu99pwpAX1fo6YE2nK3DcD9TnoBkpG8iQEdUxhvbQNmAm5Y8mn8lkK
 GQujmBZm7RNc/Vdvz0L1b9M4Pa8fiRqqnMK76wOXwev1R0UTVKM3Vh9SvrCikqpDeO9i
 EVO/VvvUdUoatSO6gWBpr+AjF5TqUxzwVCdquEAix6dyT27fdwKqhcBTyNC6h0zs3fOF
 F3tQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=a5eLsCDG4D/gZwEvJUAlIVf5UAIyr4g7ytzcN27L37E=;
 b=jZV/h1jtk/q8LR9KxzjPozmI9UuiNITWy2fvG3JC271OCNKA7xlnDZD10TAcaptZev
 KNthVAP0cGVKsewXjiKO9cONPsJx3GH6UqwzY//hPG73N1RgqUc+tgmiubUCFaeftZOi
 orMwe9jI4AOXE9Z+On5q2m7k5C27n6g+MQNVVH1BO9BOK2KzA1JvMWycw3XkvqrmaLj+
 Ps8llosIBV9G9h4whku6DigLBWBi0Bc7aZzHtsoXNHfsuBXEK8d/eMMZSSUCO/Y/xYKV
 iCWH8SinZXgBuoL5T+hnrnMnppnE65eWFaZ11yKvgQmrVRmcCDQdHZfMnuUIfsSR2dxL
 QxUQ==
X-Gm-Message-State: AOAM533vB/LCq+juqfvbLAlU/oXowwKIkefy6bkwE8ilegxEvmXz2/Jc
 HAxVpNmLr25w6XbXOUIVaukcXSpeAvs=
X-Google-Smtp-Source: ABdhPJzbjiIxgUJExNVcKkH3z7jnC2eesnKRRVbOJyg8O0Qzr7EqwuB/wGUiQw1BCNFFUpB2JRBj4w==
X-Received: by 2002:a5d:47ad:: with SMTP id 13mr19812593wrb.385.1633433866978; 
 Tue, 05 Oct 2021 04:37:46 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 c5sm1739912wml.9.2021.10.05.04.37.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Oct 2021 04:37:46 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Date: Tue,  5 Oct 2021 13:37:16 +0200
Message-Id: <20211005113742.1101-3-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211005113742.1101-1-christian.koenig@amd.com>
References: <20211005113742.1101-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 02/28] dma-buf: add dma_resv_for_each_fence
 v2
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

QSBzaW1wbGVyIHZlcnNpb24gb2YgdGhlIGl0ZXJhdG9yIHRvIGJlIHVzZWQgd2hlbiB0aGUgZG1h
X3Jlc3Ygb2JqZWN0IGlzCmxvY2tlZC4KCnYyOiBmaXggaW5kZXggY2hlY2sgaGVyZSBhcyB3ZWxs
CgpTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5j
b20+Ci0tLQogZHJpdmVycy9kbWEtYnVmL2RtYS1yZXN2LmMgfCA0OSArKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKwogaW5jbHVkZS9saW51eC9kbWEtcmVzdi5oICAgfCAxOSAr
KysrKysrKysrKysrKysKIDIgZmlsZXMgY2hhbmdlZCwgNjggaW5zZXJ0aW9ucygrKQoKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtcmVzdi5jIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1y
ZXN2LmMKaW5kZXggM2NiY2Y2NmExMzdlLi4yMzFiYWUxNzNlZjEgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZG1hLWJ1Zi9kbWEtcmVzdi5jCisrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtcmVzdi5jCkBA
IC00MjMsNiArNDIzLDU1IEBAIHN0cnVjdCBkbWFfZmVuY2UgKmRtYV9yZXN2X2l0ZXJfbmV4dF91
bmxvY2tlZChzdHJ1Y3QgZG1hX3Jlc3ZfaXRlciAqY3Vyc29yKQogfQogRVhQT1JUX1NZTUJPTChk
bWFfcmVzdl9pdGVyX25leHRfdW5sb2NrZWQpOwogCisvKioKKyAqIGRtYV9yZXN2X2l0ZXJfZmly
c3QgLSBmaXJzdCBmZW5jZSBmcm9tIGEgbG9ja2VkIGRtYV9yZXN2IG9iamVjdAorICogQGN1cnNv
cjogY3Vyc29yIHRvIHJlY29yZCB0aGUgY3VycmVudCBwb3NpdGlvbgorICoKKyAqIFJldHVybiBh
bGwgdGhlIGZlbmNlcyBpbiB0aGUgZG1hX3Jlc3Ygb2JqZWN0IHdoaWxlIGhvbGRpbmcgdGhlCisg
KiAmZG1hX3Jlc3YubG9jay4KKyAqLworc3RydWN0IGRtYV9mZW5jZSAqZG1hX3Jlc3ZfaXRlcl9m
aXJzdChzdHJ1Y3QgZG1hX3Jlc3ZfaXRlciAqY3Vyc29yKQoreworCXN0cnVjdCBkbWFfZmVuY2Ug
KmZlbmNlOworCisJZG1hX3Jlc3ZfYXNzZXJ0X2hlbGQoY3Vyc29yLT5vYmopOworCisJY3Vyc29y
LT5pbmRleCA9IDA7CisJY3Vyc29yLT5mZW5jZXMgPSBkbWFfcmVzdl9zaGFyZWRfbGlzdChjdXJz
b3ItPm9iaik7CisKKwlmZW5jZSA9IGRtYV9yZXN2X2V4Y2xfZmVuY2UoY3Vyc29yLT5vYmopOwor
CWlmICghZmVuY2UpCisJCWZlbmNlID0gZG1hX3Jlc3ZfaXRlcl9uZXh0KGN1cnNvcik7CisKKwlj
dXJzb3ItPmlzX3Jlc3RhcnRlZCA9IHRydWU7CisJcmV0dXJuIGZlbmNlOworfQorRVhQT1JUX1NZ
TUJPTF9HUEwoZG1hX3Jlc3ZfaXRlcl9maXJzdCk7CisKKy8qKgorICogZG1hX3Jlc3ZfaXRlcl9u
ZXh0IC0gbmV4dCBmZW5jZSBmcm9tIGEgbG9ja2VkIGRtYV9yZXN2IG9iamVjdAorICogQGN1cnNv
cjogY3Vyc29yIHRvIHJlY29yZCB0aGUgY3VycmVudCBwb3NpdGlvbgorICoKKyAqIFJldHVybiBh
bGwgdGhlIGZlbmNlcyBpbiB0aGUgZG1hX3Jlc3Ygb2JqZWN0IHdoaWxlIGhvbGRpbmcgdGhlCisg
KiAmZG1hX3Jlc3YubG9jay4KKyAqLworc3RydWN0IGRtYV9mZW5jZSAqZG1hX3Jlc3ZfaXRlcl9u
ZXh0KHN0cnVjdCBkbWFfcmVzdl9pdGVyICpjdXJzb3IpCit7CisJdW5zaWduZWQgaW50IGlkeDsK
KworCWRtYV9yZXN2X2Fzc2VydF9oZWxkKGN1cnNvci0+b2JqKTsKKworCWN1cnNvci0+aXNfcmVz
dGFydGVkID0gZmFsc2U7CisJaWYgKCFjdXJzb3ItPmFsbF9mZW5jZXMgfHwgIWN1cnNvci0+ZmVu
Y2VzIHx8CisJICAgIGN1cnNvci0+aW5kZXggPj0gY3Vyc29yLT5mZW5jZXMtPnNoYXJlZF9jb3Vu
dCkKKwkJcmV0dXJuIE5VTEw7CisKKwlpZHggPSBjdXJzb3ItPmluZGV4Kys7CisJcmV0dXJuIHJj
dV9kZXJlZmVyZW5jZV9wcm90ZWN0ZWQoY3Vyc29yLT5mZW5jZXMtPnNoYXJlZFtpZHhdLAorCQkJ
CQkgZG1hX3Jlc3ZfaGVsZChjdXJzb3ItPm9iaikpOworfQorRVhQT1JUX1NZTUJPTF9HUEwoZG1h
X3Jlc3ZfaXRlcl9uZXh0KTsKKwogLyoqCiAgKiBkbWFfcmVzdl9jb3B5X2ZlbmNlcyAtIENvcHkg
YWxsIGZlbmNlcyBmcm9tIHNyYyB0byBkc3QuCiAgKiBAZHN0OiB0aGUgZGVzdGluYXRpb24gcmVz
ZXJ2YXRpb24gb2JqZWN0CmRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L2RtYS1yZXN2LmggYi9p
bmNsdWRlL2xpbnV4L2RtYS1yZXN2LmgKaW5kZXggNzY0MTM4YWQ4NTgzLi4zZGY3ZWYyMzcxMmQg
MTAwNjQ0Ci0tLSBhL2luY2x1ZGUvbGludXgvZG1hLXJlc3YuaAorKysgYi9pbmNsdWRlL2xpbnV4
L2RtYS1yZXN2LmgKQEAgLTE3OSw2ICsxNzksOCBAQCBzdHJ1Y3QgZG1hX3Jlc3ZfaXRlciB7CiAK
IHN0cnVjdCBkbWFfZmVuY2UgKmRtYV9yZXN2X2l0ZXJfZmlyc3RfdW5sb2NrZWQoc3RydWN0IGRt
YV9yZXN2X2l0ZXIgKmN1cnNvcik7CiBzdHJ1Y3QgZG1hX2ZlbmNlICpkbWFfcmVzdl9pdGVyX25l
eHRfdW5sb2NrZWQoc3RydWN0IGRtYV9yZXN2X2l0ZXIgKmN1cnNvcik7CitzdHJ1Y3QgZG1hX2Zl
bmNlICpkbWFfcmVzdl9pdGVyX2ZpcnN0KHN0cnVjdCBkbWFfcmVzdl9pdGVyICpjdXJzb3IpOwor
c3RydWN0IGRtYV9mZW5jZSAqZG1hX3Jlc3ZfaXRlcl9uZXh0KHN0cnVjdCBkbWFfcmVzdl9pdGVy
ICpjdXJzb3IpOwogCiAvKioKICAqIGRtYV9yZXN2X2l0ZXJfYmVnaW4gLSBpbml0aWFsaXplIGEg
ZG1hX3Jlc3ZfaXRlciBvYmplY3QKQEAgLTI0NCw2ICsyNDYsMjMgQEAgc3RhdGljIGlubGluZSBi
b29sIGRtYV9yZXN2X2l0ZXJfaXNfcmVzdGFydGVkKHN0cnVjdCBkbWFfcmVzdl9pdGVyICpjdXJz
b3IpCiAJZm9yIChmZW5jZSA9IGRtYV9yZXN2X2l0ZXJfZmlyc3RfdW5sb2NrZWQoY3Vyc29yKTsJ
CVwKIAkgICAgIGZlbmNlOyBmZW5jZSA9IGRtYV9yZXN2X2l0ZXJfbmV4dF91bmxvY2tlZChjdXJz
b3IpKQogCisvKioKKyAqIGRtYV9yZXN2X2Zvcl9lYWNoX2ZlbmNlIC0gZmVuY2UgaXRlcmF0b3IK
KyAqIEBjdXJzb3I6IGEgc3RydWN0IGRtYV9yZXN2X2l0ZXIgcG9pbnRlcgorICogQG9iajogYSBk
bWFfcmVzdiBvYmplY3QgcG9pbnRlcgorICogQGFsbF9mZW5jZXM6IHRydWUgaWYgYWxsIGZlbmNl
cyBzaG91bGQgYmUgcmV0dXJuZWQKKyAqIEBmZW5jZTogdGhlIGN1cnJlbnQgZmVuY2UKKyAqCisg
KiBJdGVyYXRlIG92ZXIgdGhlIGZlbmNlcyBpbiBhIHN0cnVjdCBkbWFfcmVzdiBvYmplY3Qgd2hp
bGUgaG9sZGluZyB0aGUKKyAqICZkbWFfcmVzdi5sb2NrLiBAYWxsX2ZlbmNlcyBjb250cm9scyBp
ZiB0aGUgc2hhcmVkIGZlbmNlcyBhcmUgcmV0dXJuZWQgYXMKKyAqIHdlbGwuIFRoZSBjdXJzb3Ig
aW5pdGlhbGlzYXRpb24gaXMgcGFydCBvZiB0aGUgaXRlcmF0b3IgYW5kIHRoZSBmZW5jZSBzdGF5
cworICogdmFsaWQgYXMgbG9uZyBhcyB0aGUgbG9jayBpcyBoZWxkLgorICovCisjZGVmaW5lIGRt
YV9yZXN2X2Zvcl9lYWNoX2ZlbmNlKGN1cnNvciwgb2JqLCBhbGxfZmVuY2VzLCBmZW5jZSkJXAor
CWZvciAoZG1hX3Jlc3ZfaXRlcl9iZWdpbihjdXJzb3IsIG9iaiwgYWxsX2ZlbmNlcyksCVwKKwkg
ICAgIGZlbmNlID0gZG1hX3Jlc3ZfaXRlcl9maXJzdChjdXJzb3IpOyBmZW5jZTsJXAorCSAgICAg
ZmVuY2UgPSBkbWFfcmVzdl9pdGVyX25leHQoY3Vyc29yKSkKKwogI2RlZmluZSBkbWFfcmVzdl9o
ZWxkKG9iaikgbG9ja2RlcF9pc19oZWxkKCYob2JqKS0+bG9jay5iYXNlKQogI2RlZmluZSBkbWFf
cmVzdl9hc3NlcnRfaGVsZChvYmopIGxvY2tkZXBfYXNzZXJ0X2hlbGQoJihvYmopLT5sb2NrLmJh
c2UpCiAKLS0gCjIuMjUuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5s
aW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFy
by1tbS1zaWcK
