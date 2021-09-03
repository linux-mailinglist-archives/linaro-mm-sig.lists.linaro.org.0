Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 534F1400514
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  3 Sep 2021 20:44:13 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0E3F961A49
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  3 Sep 2021 18:44:12 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id C9AFC62CF6; Fri,  3 Sep 2021 18:44:10 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8979D62164;
	Fri,  3 Sep 2021 18:44:06 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 5812D60581
 for <linaro-mm-sig@lists.linaro.org>; Fri,  3 Sep 2021 18:44:05 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 5284061172; Fri,  3 Sep 2021 18:44:05 +0000 (UTC)
Received: from mail-pj1-f51.google.com (mail-pj1-f51.google.com
 [209.85.216.51])
 by lists.linaro.org (Postfix) with ESMTPS id 3D06D60581
 for <linaro-mm-sig@lists.linaro.org>; Fri,  3 Sep 2021 18:44:03 +0000 (UTC)
Received: by mail-pj1-f51.google.com with SMTP id
 ot2-20020a17090b3b4200b0019127f8ed87so141097pjb.1
 for <linaro-mm-sig@lists.linaro.org>; Fri, 03 Sep 2021 11:44:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=PZdCcQ8tcqex0OLD2RIlUbOtwTacOGhblZ9bIPZWiKA=;
 b=liQZziVpS09I/Y7nKQPncOo/kNAL0/xeZUTUjD1s54CZDfEbTzHj7pwCzFeZUKFizf
 6/Qkw9Jf9hTRnrghuIvaLNWgvZN1/CYWs0dVX5npYK/V1r4/WVMnWlUVrwoJiwAObIGP
 xHOMxFuQEGvXxKV0pb8/oTgQ90bWS9eCdhsx80WAu+D7oYoCzrTGurYs/tdlfyyA5h7B
 pj+r2b2XHgonzl73U4Ev853xmLkvyVtpfgERjxSnCLoLkz3FFaY8BcGH64tzJNdaaYqS
 UfhwyWzviS/xR5bJmxpcTNBn9ruB3j6YzqyavcgIWQe504AWeZX1DYeGouvP+WAPc4n/
 7pQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=PZdCcQ8tcqex0OLD2RIlUbOtwTacOGhblZ9bIPZWiKA=;
 b=Ift+XXWMQcsAx5p0CgQyKrIjWKPIovK4WVaTTFP92N/sgZz5Syj02j3sXDP+Bv67gD
 tWKxjYhFQkC6cTgGAvdYR9iY5+3/4bpbLCoalBeEM1oxduiKbM4dXYcUtXenuOnvVsa5
 vOM+Bo/gGoNS7rMliEKthF8mogemCK2QS/kKv8hDVjEB0Bh5Dz1Tqq+x1Hbsp5hXmSap
 +aud6fEGvEku9tQXyZ0+/L8vutCWqaSuJYm6SIttXPviefdPVzjH2A+sVTud83KalkdJ
 sdyJ9CsUNKMaTZ260SnpCLUBX9CYJ9bJYtpi6Hgd47Rh1ibC9PRSe2wziEf8zSdYu3aa
 IYhQ==
X-Gm-Message-State: AOAM531q9zuO8LROAD2BJcxkvqYI04qFC3L3vJUdU1OSpbM5OvMdyDtg
 hecMENim36p9THFhOpbVStE=
X-Google-Smtp-Source: ABdhPJyqZa627QuEiIJsQlyGdv0n86CMJYOQxQvddGI6zVCpjyV+AqIaUyU9EoPvz1A1JWWcw7Dftg==
X-Received: by 2002:a17:90b:1246:: with SMTP id
 gx6mr292968pjb.94.1630694642383; 
 Fri, 03 Sep 2021 11:44:02 -0700 (PDT)
Received: from localhost (c-73-25-156-94.hsd1.or.comcast.net. [73.25.156.94])
 by smtp.gmail.com with ESMTPSA id
 z65sm39685pjj.43.2021.09.03.11.44.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Sep 2021 11:44:01 -0700 (PDT)
From: Rob Clark <robdclark@gmail.com>
To: dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org
Date: Fri,  3 Sep 2021 11:47:52 -0700
Message-Id: <20210903184806.1680887-2-robdclark@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210903184806.1680887-1-robdclark@gmail.com>
References: <20210903184806.1680887-1-robdclark@gmail.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH v3 1/9] dma-fence: Add deadline awareness
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
Cc: Rob Clark <robdclark@chromium.org>,
 =?UTF-8?q?Michel=20D=C3=A4nzer?= <michel@daenzer.net>,
 open list <linux-kernel@vger.kernel.org>, Pekka Paalanen <ppaalanen@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, Gustavo Padovan <gustavo@padovan.org>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 "open list:SYNC FILE FRAMEWORK" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

RnJvbTogUm9iIENsYXJrIDxyb2JkY2xhcmtAY2hyb21pdW0ub3JnPgoKQWRkIGEgd2F5IHRvIGhp
bnQgdG8gdGhlIGZlbmNlIHNpZ25hbGVyIG9mIGFuIHVwY29taW5nIGRlYWRsaW5lLCBzdWNoIGFz
CnZibGFuaywgd2hpY2ggdGhlIGZlbmNlIHdhaXRlciB3b3VsZCBwcmVmZXIgbm90IHRvIG1pc3Mu
ICBUaGlzIGlzIHRvIGFpZAp0aGUgZmVuY2Ugc2lnbmFsZXIgaW4gbWFraW5nIHBvd2VyIG1hbmFn
ZW1lbnQgZGVjaXNpb25zLCBsaWtlIGJvb3N0aW5nCmZyZXF1ZW5jeSBhcyB0aGUgZGVhZGxpbmUg
YXBwcm9hY2hlcyBhbmQgYXdhcmVuZXNzIG9mIG1pc3NpbmcgZGVhZGxpbmVzCnNvIHRoYXQgY2Fu
IGJlIGZhY3RvcmVkIGluIHRvIHRoZSBmcmVxdWVuY3kgc2NhbGluZy4KCnYyOiBEcm9wIGRtYV9m
ZW5jZTo6ZGVhZGxpbmUgYW5kIHJlbGF0ZWQgbG9naWMgdG8gZmlsdGVyIGR1cGxpY2F0ZQogICAg
ZGVhZGxpbmVzLCB0byBhdm9pZCBpbmNyZWFzaW5nIGRtYV9mZW5jZSBzaXplLiAgVGhlIGZlbmNl
LWNvbnRleHQKICAgIGltcGxlbWVudGF0aW9uIHdpbGwgbmVlZCBzaW1pbGFyIGxvZ2ljIHRvIHRy
YWNrIGRlYWRsaW5lcyBvZiBhbGwKICAgIHRoZSBmZW5jZXMgb24gdGhlIHNhbWUgdGltZWxpbmUu
ICBbY2tvZW5pZ10KClNpZ25lZC1vZmYtYnk6IFJvYiBDbGFyayA8cm9iZGNsYXJrQGNocm9taXVt
Lm9yZz4KUmV2aWV3ZWQtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1k
LmNvbT4KU2lnbmVkLW9mZi1ieTogUm9iIENsYXJrIDxyb2JkY2xhcmtAY2hyb21pdW0ub3JnPgot
LS0KIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYyB8IDIwICsrKysrKysrKysrKysrKysrKysr
CiBpbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS5oICAgfCAxNiArKysrKysrKysrKysrKysrCiAyIGZp
bGVzIGNoYW5nZWQsIDM2IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1i
dWYvZG1hLWZlbmNlLmMgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMKaW5kZXggY2UwZjVl
ZmY1NzVkLi4xZjQ0NDg2M2I5NGQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVu
Y2UuYworKysgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMKQEAgLTkxMCw2ICs5MTAsMjYg
QEAgZG1hX2ZlbmNlX3dhaXRfYW55X3RpbWVvdXQoc3RydWN0IGRtYV9mZW5jZSAqKmZlbmNlcywg
dWludDMyX3QgY291bnQsCiB9CiBFWFBPUlRfU1lNQk9MKGRtYV9mZW5jZV93YWl0X2FueV90aW1l
b3V0KTsKIAorCisvKioKKyAqIGRtYV9mZW5jZV9zZXRfZGVhZGxpbmUgLSBzZXQgZGVzaXJlZCBm
ZW5jZS13YWl0IGRlYWRsaW5lCisgKiBAZmVuY2U6ICAgIHRoZSBmZW5jZSB0aGF0IGlzIHRvIGJl
IHdhaXRlZCBvbgorICogQGRlYWRsaW5lOiB0aGUgdGltZSBieSB3aGljaCB0aGUgd2FpdGVyIGhv
cGVzIGZvciB0aGUgZmVuY2UgdG8gYmUKKyAqICAgICAgICAgICAgc2lnbmFsZWQKKyAqCisgKiBJ
bmZvcm0gdGhlIGZlbmNlIHNpZ25hbGVyIG9mIGFuIHVwY29taW5nIGRlYWRsaW5lLCBzdWNoIGFz
IHZibGFuaywgYnkKKyAqIHdoaWNoIHBvaW50IHRoZSB3YWl0ZXIgd291bGQgcHJlZmVyIHRoZSBm
ZW5jZSB0byBiZSBzaWduYWxlZCBieS4gIFRoaXMKKyAqIGlzIGludGVuZGVkIHRvIGdpdmUgZmVl
ZGJhY2sgdG8gdGhlIGZlbmNlIHNpZ25hbGVyIHRvIGFpZCBpbiBwb3dlcgorICogbWFuYWdlbWVu
dCBkZWNpc2lvbnMsIHN1Y2ggYXMgYm9vc3RpbmcgR1BVIGZyZXF1ZW5jeSBpZiBhIHBlcmlvZGlj
CisgKiB2YmxhbmsgZGVhZGxpbmUgaXMgYXBwcm9hY2hpbmcuCisgKi8KK3ZvaWQgZG1hX2ZlbmNl
X3NldF9kZWFkbGluZShzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSwga3RpbWVfdCBkZWFkbGluZSkK
K3sKKwlpZiAoZmVuY2UtPm9wcy0+c2V0X2RlYWRsaW5lICYmICFkbWFfZmVuY2VfaXNfc2lnbmFs
ZWQoZmVuY2UpKQorCQlmZW5jZS0+b3BzLT5zZXRfZGVhZGxpbmUoZmVuY2UsIGRlYWRsaW5lKTsK
K30KK0VYUE9SVF9TWU1CT0woZG1hX2ZlbmNlX3NldF9kZWFkbGluZSk7CisKIC8qKgogICogZG1h
X2ZlbmNlX2luaXQgLSBJbml0aWFsaXplIGEgY3VzdG9tIGZlbmNlLgogICogQGZlbmNlOiB0aGUg
ZmVuY2UgdG8gaW5pdGlhbGl6ZQpkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC9kbWEtZmVuY2Uu
aCBiL2luY2x1ZGUvbGludXgvZG1hLWZlbmNlLmgKaW5kZXggNmZmYjRiMmM2MzcxLi45YzgwOWYw
ZDVkMGEgMTAwNjQ0Ci0tLSBhL2luY2x1ZGUvbGludXgvZG1hLWZlbmNlLmgKKysrIGIvaW5jbHVk
ZS9saW51eC9kbWEtZmVuY2UuaApAQCAtOTksNiArOTksNyBAQCBlbnVtIGRtYV9mZW5jZV9mbGFn
X2JpdHMgewogCURNQV9GRU5DRV9GTEFHX1NJR05BTEVEX0JJVCwKIAlETUFfRkVOQ0VfRkxBR19U
SU1FU1RBTVBfQklULAogCURNQV9GRU5DRV9GTEFHX0VOQUJMRV9TSUdOQUxfQklULAorCURNQV9G
RU5DRV9GTEFHX0hBU19ERUFETElORV9CSVQsCiAJRE1BX0ZFTkNFX0ZMQUdfVVNFUl9CSVRTLCAv
KiBtdXN0IGFsd2F5cyBiZSBsYXN0IG1lbWJlciAqLwogfTsKIApAQCAtMjYxLDYgKzI2MiwxOSBA
QCBzdHJ1Y3QgZG1hX2ZlbmNlX29wcyB7CiAJICovCiAJdm9pZCAoKnRpbWVsaW5lX3ZhbHVlX3N0
cikoc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UsCiAJCQkJICAgY2hhciAqc3RyLCBpbnQgc2l6ZSk7
CisKKwkvKioKKwkgKiBAc2V0X2RlYWRsaW5lOgorCSAqCisJICogQ2FsbGJhY2sgdG8gYWxsb3cg
YSBmZW5jZSB3YWl0ZXIgdG8gaW5mb3JtIHRoZSBmZW5jZSBzaWduYWxlciBvZiBhbgorCSAqIHVw
Y29taW5nIGRlYWRsaW5lLCBzdWNoIGFzIHZibGFuaywgYnkgd2hpY2ggcG9pbnQgdGhlIHdhaXRl
ciB3b3VsZAorCSAqIHByZWZlciB0aGUgZmVuY2UgdG8gYmUgc2lnbmFsZWQgYnkuICBUaGlzIGlz
IGludGVuZGVkIHRvIGdpdmUgZmVlZGJhY2sKKwkgKiB0byB0aGUgZmVuY2Ugc2lnbmFsZXIgdG8g
YWlkIGluIHBvd2VyIG1hbmFnZW1lbnQgZGVjaXNpb25zLCBzdWNoIGFzCisJICogYm9vc3Rpbmcg
R1BVIGZyZXF1ZW5jeS4KKwkgKgorCSAqIFRoaXMgY2FsbGJhY2sgaXMgb3B0aW9uYWwuCisJICov
CisJdm9pZCAoKnNldF9kZWFkbGluZSkoc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UsIGt0aW1lX3Qg
ZGVhZGxpbmUpOwogfTsKIAogdm9pZCBkbWFfZmVuY2VfaW5pdChzdHJ1Y3QgZG1hX2ZlbmNlICpm
ZW5jZSwgY29uc3Qgc3RydWN0IGRtYV9mZW5jZV9vcHMgKm9wcywKQEAgLTU4Niw2ICs2MDAsOCBA
QCBzdGF0aWMgaW5saW5lIHNpZ25lZCBsb25nIGRtYV9mZW5jZV93YWl0KHN0cnVjdCBkbWFfZmVu
Y2UgKmZlbmNlLCBib29sIGludHIpCiAJcmV0dXJuIHJldCA8IDAgPyByZXQgOiAwOwogfQogCit2
b2lkIGRtYV9mZW5jZV9zZXRfZGVhZGxpbmUoc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UsIGt0aW1l
X3QgZGVhZGxpbmUpOworCiBzdHJ1Y3QgZG1hX2ZlbmNlICpkbWFfZmVuY2VfZ2V0X3N0dWIodm9p
ZCk7CiBzdHJ1Y3QgZG1hX2ZlbmNlICpkbWFfZmVuY2VfYWxsb2NhdGVfcHJpdmF0ZV9zdHViKHZv
aWQpOwogdTY0IGRtYV9mZW5jZV9jb250ZXh0X2FsbG9jKHVuc2lnbmVkIG51bSk7Ci0tIAoyLjMx
LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFy
by1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRw
czovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
