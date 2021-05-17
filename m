Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 23DCF382F46
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 17 May 2021 16:14:26 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B3869610C2
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 17 May 2021 14:14:24 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 5838160D3D; Mon, 17 May 2021 14:14:22 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 297E26118B;
	Mon, 17 May 2021 14:14:18 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 91BBC60B35
 for <linaro-mm-sig@lists.linaro.org>; Mon, 17 May 2021 14:11:43 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 8663760B8D; Mon, 17 May 2021 14:11:43 +0000 (UTC)
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com
 [209.85.208.53])
 by lists.linaro.org (Postfix) with ESMTPS id 472E960B35
 for <linaro-mm-sig@lists.linaro.org>; Mon, 17 May 2021 14:11:41 +0000 (UTC)
Received: by mail-ed1-f53.google.com with SMTP id t15so7061133edr.11
 for <linaro-mm-sig@lists.linaro.org>; Mon, 17 May 2021 07:11:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Xt3NABxpywAvvR6VPkv8lAm7fXhnKgnyzb3m+fNVeUo=;
 b=HBMsiDCnkg8q6WJeZba0+meqo7/6wak/E589gphpPEG1HVCQDkwYOXqZqFHWsWyy8m
 LLCzXhox4X3a7ABpEZriAAB1+oLe4yPKvX4ib3GelAwxlR5v6XbvNBIFkmAhoKhs/iYc
 F2srM1ZIOBxT1ZmY6O+VPauqL/kZf0LeDasDTROI87urWxBC/K/pRo/+rwW/JelsQPjj
 w9VdOd9uFx5xrI3f2aXYYzbpGraRU6LhSgS7hpYiQzcHef0qbKjAf30BXd6Wjyl8IIQ4
 cUX5SHmXPBJ7NoQBcJup8nZn7AOcKW3h+ZPRjVbaBQyZ2d/tQvfJ3KdYa/MV7dUkTXPT
 eriw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Xt3NABxpywAvvR6VPkv8lAm7fXhnKgnyzb3m+fNVeUo=;
 b=IDRGjXk4KIDv4rIq/NzA7/T4kFly2gM17XQ9ko3GJOuCKBZkn9nYBTjx4QkFLr21rr
 RqE6B2VfHSvumZn3mSgQw90BJZ8C5gq+Gf0ZkKlff9FnMgrnGru08BrmhCzajHbb5d5B
 PzbHm85VFjOk4m0kLqtjCgTao6LPkDB0mRhzKjaMIRqKPc4136LmAePOz0WmEutF4BXO
 xgCfS+39pQN7sBcAlfmPAjkviLNYr0y/XE6q/z0XAnjMrucGFnB9QnUJuCLVHEHfiyu6
 EsKMPZIQkVqo+sPse/AKarcVrYYPTtS0WINoBdIxjZtEmHudtVJjgMysQPE6Bq2/UasG
 j+Vw==
X-Gm-Message-State: AOAM530tJnwaEO8N8OCnBmaKHG6I3Nc3NOfM80/WBAhy44OmE+pij+0y
 j4lG5RVYkMe2P1pyncy2/HdCcmVrWRw=
X-Google-Smtp-Source: ABdhPJxobpB36uMi5VYCY/9yNi3dWFU7MQChGpDZL7IOrslL73L4i8sHXWhiyHs/b2HSghEVt5Bl6w==
X-Received: by 2002:aa7:db93:: with SMTP id u19mr221239edt.227.1621260700438; 
 Mon, 17 May 2021 07:11:40 -0700 (PDT)
Received: from abel.fritz.box ([2a02:908:1252:fb60:1df4:c5b6:b8fd:3c4b])
 by smtp.gmail.com with ESMTPSA id b9sm2419624edt.71.2021.05.17.07.11.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 17 May 2021 07:11:40 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org
Date: Mon, 17 May 2021 16:11:29 +0200
Message-Id: <20210517141129.2225-12-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210517141129.2225-1-christian.koenig@amd.com>
References: <20210517141129.2225-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 11/11] drm/amdgpu: fix shared access to
 exported DMA-bufs
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
Cc: daniel@ffwll.ch
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

V2UgYXJlIHJ1bm5pbmcgaW50byBtb3JlIGFuZCBtb3JlIHByb2JsZW1zIHdpdGggdGhhdCBhcHBy
b2FjaCBzaW5jZSBldmVyeQpjb21tYW5kIHN1Ym1pc3Npb24gdG8gdGhlIGJ1ZmZlciBpbiBxdWVz
dGlvbiBpcyBub3cgc2VyaWFsaXppbmcuCgpTaW5jZSB0aGUgaTkxNSB3aGVyZSB3ZSBvcmlnaW5h
bGx5IGFkZGVkIHRoYXQgZm9yIGlzIG5vdyBmaXhlZCB3ZSBzaG91bGQKYmUgYWJsZSB0byByZW1v
dmUgdGhpcy4KClNpZ25lZC1vZmYtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2Vu
aWdAYW1kLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfY3MuYyAg
ICAgIHwgMTAgKystLS0tLS0tLQogZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2Rt
YV9idWYuYyB8ICA2IC0tLS0tLQogZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2dl
bS5jICAgICB8ICA1IC0tLS0tCiBkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfb2Jq
ZWN0LmMgIHwgIDIgKy0KIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9vYmplY3Qu
aCAgfCAgMSAtCiA1IGZpbGVzIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMjEgZGVsZXRpb25z
KC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2NzLmMg
Yi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfY3MuYwppbmRleCBiNWM3NjY5OTgw
NDUuLjZiNjEwYTJkZjUyZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUv
YW1kZ3B1X2NzLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2NzLmMK
QEAgLTYxNCwxNCArNjE0LDggQEAgc3RhdGljIGludCBhbWRncHVfY3NfcGFyc2VyX2JvcyhzdHJ1
Y3QgYW1kZ3B1X2NzX3BhcnNlciAqcCwKIAlnd3MgPSBwLT5ib19saXN0LT5nd3Nfb2JqOwogCW9h
ID0gcC0+Ym9fbGlzdC0+b2Ffb2JqOwogCi0JYW1kZ3B1X2JvX2xpc3RfZm9yX2VhY2hfZW50cnko
ZSwgcC0+Ym9fbGlzdCkgewotCQlzdHJ1Y3QgYW1kZ3B1X2JvICpibyA9IHR0bV90b19hbWRncHVf
Ym8oZS0+dHYuYm8pOwotCi0JCS8qIE1ha2Ugc3VyZSB3ZSB1c2UgdGhlIGV4Y2x1c2l2ZSBzbG90
IGZvciBzaGFyZWQgQk9zICovCi0JCWlmIChiby0+cHJpbWVfc2hhcmVkX2NvdW50KQotCQkJZS0+
dHYubnVtX3NoYXJlZCA9IDA7Ci0JCWUtPmJvX3ZhID0gYW1kZ3B1X3ZtX2JvX2ZpbmQodm0sIGJv
KTsKLQl9CisJYW1kZ3B1X2JvX2xpc3RfZm9yX2VhY2hfZW50cnkoZSwgcC0+Ym9fbGlzdCkKKwkJ
ZS0+Ym9fdmEgPSBhbWRncHVfdm1fYm9fZmluZCh2bSwgdHRtX3RvX2FtZGdwdV9ibyhlLT50di5i
bykpOwogCiAJaWYgKGdkcykgewogCQlwLT5qb2ItPmdkc19iYXNlID0gYW1kZ3B1X2JvX2dwdV9v
ZmZzZXQoZ2RzKSA+PiBQQUdFX1NISUZUOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2Ft
ZC9hbWRncHUvYW1kZ3B1X2RtYV9idWYuYyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2Ft
ZGdwdV9kbWFfYnVmLmMKaW5kZXggNjdjZWY4MGUyNWM4Li43NmEyYWM1NDc2OTggMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9kbWFfYnVmLmMKKysrIGIvZHJp
dmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2RtYV9idWYuYwpAQCAtMTY3LDcgKzE2Nyw2
IEBAIHN0YXRpYyBpbnQgYW1kZ3B1X2RtYV9idWZfYXR0YWNoKHN0cnVjdCBkbWFfYnVmICpkbWFi
dWYsCiAJaWYgKHIpCiAJCWdvdG8gb3V0OwogCi0JYm8tPnByaW1lX3NoYXJlZF9jb3VudCsrOwog
CWFtZGdwdV9ib191bnJlc2VydmUoYm8pOwogCXJldHVybiAwOwogCkBAIC0xOTEsOSArMTkwLDYg
QEAgc3RhdGljIHZvaWQgYW1kZ3B1X2RtYV9idWZfZGV0YWNoKHN0cnVjdCBkbWFfYnVmICpkbWFi
dWYsCiAJc3RydWN0IGFtZGdwdV9ibyAqYm8gPSBnZW1fdG9fYW1kZ3B1X2JvKG9iaik7CiAJc3Ry
dWN0IGFtZGdwdV9kZXZpY2UgKmFkZXYgPSBhbWRncHVfdHRtX2FkZXYoYm8tPnRiby5iZGV2KTsK
IAotCWlmIChhdHRhY2gtPmRldi0+ZHJpdmVyICE9IGFkZXYtPmRldi0+ZHJpdmVyICYmIGJvLT5w
cmltZV9zaGFyZWRfY291bnQpCi0JCWJvLT5wcmltZV9zaGFyZWRfY291bnQtLTsKLQogCXBtX3J1
bnRpbWVfbWFya19sYXN0X2J1c3koYWRldl90b19kcm0oYWRldiktPmRldik7CiAJcG1fcnVudGlt
ZV9wdXRfYXV0b3N1c3BlbmQoYWRldl90b19kcm0oYWRldiktPmRldik7CiB9CkBAIC00NDYsOCAr
NDQyLDYgQEAgYW1kZ3B1X2RtYV9idWZfY3JlYXRlX29iaihzdHJ1Y3QgZHJtX2RldmljZSAqZGV2
LCBzdHJ1Y3QgZG1hX2J1ZiAqZG1hX2J1ZikKIAlibyA9IGdlbV90b19hbWRncHVfYm8oZ29iaik7
CiAJYm8tPmFsbG93ZWRfZG9tYWlucyA9IEFNREdQVV9HRU1fRE9NQUlOX0dUVDsKIAliby0+cHJl
ZmVycmVkX2RvbWFpbnMgPSBBTURHUFVfR0VNX0RPTUFJTl9HVFQ7Ci0JaWYgKGRtYV9idWYtPm9w
cyAhPSAmYW1kZ3B1X2RtYWJ1Zl9vcHMpCi0JCWJvLT5wcmltZV9zaGFyZWRfY291bnQgPSAxOwog
CiAJZG1hX3Jlc3ZfdW5sb2NrKHJlc3YpOwogCXJldHVybiBnb2JqOwpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2dlbS5jIGIvZHJpdmVycy9ncHUvZHJtL2Ft
ZC9hbWRncHUvYW1kZ3B1X2dlbS5jCmluZGV4IDk0ZGE0NGQ5N2U3Zi4uMzNlZGRlYTVkODNkIDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZ2VtLmMKKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2dlbS5jCkBAIC03NzUsMTEgKzc3NSw2
IEBAIGludCBhbWRncHVfZ2VtX29wX2lvY3RsKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsIHZvaWQg
KmRhdGEsCiAJCWJyZWFrOwogCX0KIAljYXNlIEFNREdQVV9HRU1fT1BfU0VUX1BMQUNFTUVOVDoK
LQkJaWYgKHJvYmotPnByaW1lX3NoYXJlZF9jb3VudCAmJiAoYXJncy0+dmFsdWUgJiBBTURHUFVf
R0VNX0RPTUFJTl9WUkFNKSkgewotCQkJciA9IC1FSU5WQUw7Ci0JCQlhbWRncHVfYm9fdW5yZXNl
cnZlKHJvYmopOwotCQkJYnJlYWs7Ci0JCX0KIAkJaWYgKGFtZGdwdV90dG1fdHRfZ2V0X3VzZXJt
bShyb2JqLT50Ym8udHRtKSkgewogCQkJciA9IC1FUEVSTTsKIAkJCWFtZGdwdV9ib191bnJlc2Vy
dmUocm9iaik7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVf
b2JqZWN0LmMgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfb2JqZWN0LmMKaW5k
ZXggMTE5MDc4MWNlZmNiLi4xNThjOWU5NGQ0MmYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9hbWQvYW1kZ3B1L2FtZGdwdV9vYmplY3QuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2Ft
ZGdwdS9hbWRncHVfb2JqZWN0LmMKQEAgLTkwNiw3ICs5MDYsNyBAQCBpbnQgYW1kZ3B1X2JvX3Bp
bl9yZXN0cmljdGVkKHN0cnVjdCBhbWRncHVfYm8gKmJvLCB1MzIgZG9tYWluLAogCQlyZXR1cm4g
LUVJTlZBTDsKIAogCS8qIEEgc2hhcmVkIGJvIGNhbm5vdCBiZSBtaWdyYXRlZCB0byBWUkFNICov
Ci0JaWYgKGJvLT5wcmltZV9zaGFyZWRfY291bnQgfHwgYm8tPnRiby5iYXNlLmltcG9ydF9hdHRh
Y2gpIHsKKwlpZiAoYm8tPnRiby5iYXNlLmltcG9ydF9hdHRhY2gpIHsKIAkJaWYgKGRvbWFpbiAm
IEFNREdQVV9HRU1fRE9NQUlOX0dUVCkKIAkJCWRvbWFpbiA9IEFNREdQVV9HRU1fRE9NQUlOX0dU
VDsKIAkJZWxzZQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1
X29iamVjdC5oIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X29iamVjdC5oCmlu
ZGV4IGIzN2QzNmFjNmI1YS4uZDczNTUzOTY5OTVkIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9k
cm0vYW1kL2FtZGdwdS9hbWRncHVfb2JqZWN0LmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9h
bWRncHUvYW1kZ3B1X29iamVjdC5oCkBAIC05Miw3ICs5Miw2IEBAIHN0cnVjdCBhbWRncHVfYm8g
ewogCXN0cnVjdCB0dG1fYnVmZmVyX29iamVjdAl0Ym87CiAJc3RydWN0IHR0bV9ib19rbWFwX29i
agkJa21hcDsKIAl1NjQJCQkJZmxhZ3M7Ci0JdW5zaWduZWQJCQlwcmltZV9zaGFyZWRfY291bnQ7
CiAJLyogcGVyIFZNIHN0cnVjdHVyZSBmb3IgcGFnZSB0YWJsZXMgYW5kIHdpdGggdmlydHVhbCBh
ZGRyZXNzZXMgKi8KIAlzdHJ1Y3QgYW1kZ3B1X3ZtX2JvX2Jhc2UJKnZtX2JvOwogCS8qIENvbnN0
YW50IGFmdGVyIGluaXRpYWxpemF0aW9uICovCi0tIAoyLjI1LjEKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0
CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
