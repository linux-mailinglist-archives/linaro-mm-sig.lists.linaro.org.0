Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 480AB1EDFAF
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  4 Jun 2020 10:21:43 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 701F8616DC
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  4 Jun 2020 08:21:42 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 5E18B6189D; Thu,  4 Jun 2020 08:21:42 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9ED7665F72;
	Thu,  4 Jun 2020 08:13:41 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id A724D60CB2
 for <linaro-mm-sig@lists.linaro.org>; Thu,  4 Jun 2020 08:12:53 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 971A96175A; Thu,  4 Jun 2020 08:12:53 +0000 (UTC)
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
 [209.85.128.66])
 by lists.linaro.org (Postfix) with ESMTPS id 809B060CB2
 for <linaro-mm-sig@lists.linaro.org>; Thu,  4 Jun 2020 08:12:48 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id j198so6255649wmj.0
 for <linaro-mm-sig@lists.linaro.org>; Thu, 04 Jun 2020 01:12:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=OK1ZbpoTNfccVSYFcsXj8JWZN2H8wb6NBSYBSiY0g+w=;
 b=V05ZBQy7q5YPmQWrWbBeOglJRqWLvZf4CyuW1MwTVVthKTLFJIoGNIYZe4MW20yYjU
 Cz948WMGMJNZ7QmzgSktMQfN3Wpwarx3CLeabZu+1AO+aB8MCk2vZ+BVfrAOQMQ3qTpV
 PvvTit0t+oetKAgutQOhGE53WFE9trzcMQvMSIH59mLLA7JPDfLA5lrtgBYKKAPFHUNt
 yGK6/pCdYALTn2vERacMvI/GyLtZmFho9ySGPBNCEQlPIYfK5f4rBIhg17O3Yhf6pp96
 Sdvf653ZWzVpRW0VmX1Fu551H8PdLvvVxEpDIawyuFTbU1iMqBorM2C0rp75zZmjRmEN
 DQJw==
X-Gm-Message-State: AOAM532+sXBVjjYxKaAf7Tj+KnA7jopLhPTs2nYl79ERfnEZfSy1hfeu
 5/xxb+6mP+/hoBTt59JM8IJUlA==
X-Google-Smtp-Source: ABdhPJxSRgyDL97CLiAzJiTWnOVc3+E0KQ864iKHEkQpN+0FvKvYO/V8cL0dvx5C878kh5RZWIw8RA==
X-Received: by 2002:a1c:df57:: with SMTP id w84mr3077102wmg.52.1591258367556; 
 Thu, 04 Jun 2020 01:12:47 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id f11sm6873305wrj.2.2020.06.04.01.12.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 04 Jun 2020 01:12:46 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Thu,  4 Jun 2020 10:12:18 +0200
Message-Id: <20200604081224.863494-13-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200604081224.863494-1-daniel.vetter@ffwll.ch>
References: <20200604081224.863494-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linux-rdma@vger.kernel.org,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 LKML <linux-kernel@vger.kernel.org>, amd-gfx@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, Daniel Vetter <daniel.vetter@intel.com>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-media@vger.kernel.org
Subject: [Linaro-mm-sig] [PATCH 12/18] drm/amdgpu: DC also loves to allocate
	stuff where it shouldn't
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

Tm90IGdvaW5nIHRvIGJvdGhlciB3aXRoIGEgY29tcGxldGUmcHJldHR5IGNvbW1pdCBtZXNzYWdl
LCBqdXN0Cm9mZmVuZGluZyBiYWNrdHJhY2U6CgogICAgICAgIGt2bWFsbG9jX25vZGUrMHg0Ny8w
eDgwCiAgICAgICAgZGNfY3JlYXRlX3N0YXRlKzB4MWYvMHg2MCBbYW1kZ3B1XQogICAgICAgIGRj
X2NvbW1pdF9zdGF0ZSsweGNiLzB4OWIwIFthbWRncHVdCiAgICAgICAgYW1kZ3B1X2RtX2F0b21p
Y19jb21taXRfdGFpbCsweGQzMS8weDIwMTAgW2FtZGdwdV0KICAgICAgICBjb21taXRfdGFpbCsw
eGE0LzB4MTQwIFtkcm1fa21zX2hlbHBlcl0KICAgICAgICBkcm1fYXRvbWljX2hlbHBlcl9jb21t
aXQrMHgxNTIvMHgxODAgW2RybV9rbXNfaGVscGVyXQogICAgICAgIGRybV9jbGllbnRfbW9kZXNl
dF9jb21taXRfYXRvbWljKzB4MWVhLzB4MjUwIFtkcm1dCiAgICAgICAgZHJtX2NsaWVudF9tb2Rl
c2V0X2NvbW1pdF9sb2NrZWQrMHg1NS8weDE5MCBbZHJtXQogICAgICAgIGRybV9jbGllbnRfbW9k
ZXNldF9jb21taXQrMHgyNC8weDQwIFtkcm1dCgp2MjogRm91bmQgbW9yZSBpbiBEQyBjb2RlLCBJ
J20ganVzdCBnb2luZyB0byBwaWxlIHRoZW0gYWxsIHVwLgoKQ2M6IGxpbnV4LW1lZGlhQHZnZXIu
a2VybmVsLm9yZwpDYzogbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCkNjOiBsaW51eC1y
ZG1hQHZnZXIua2VybmVsLm9yZwpDYzogYW1kLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKQ2M6
IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKQ2M6IENocmlzIFdpbHNvbiA8Y2hyaXNA
Y2hyaXMtd2lsc29uLmNvLnVrPgpDYzogTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hv
cnN0QGxpbnV4LmludGVsLmNvbT4KQ2M6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2Vu
aWdAYW1kLmNvbT4KU2lnbmVkLW9mZi1ieTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBp
bnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYXRvbS5jICAgICAgICAg
ICAgICAgICB8IDIgKy0KIGRyaXZlcnMvZ3B1L2RybS9hbWQvZGlzcGxheS9hbWRncHVfZG0vYW1k
Z3B1X2RtLmMgfCAyICstCiBkcml2ZXJzL2dwdS9kcm0vYW1kL2Rpc3BsYXkvZGMvY29yZS9kYy5j
ICAgICAgICAgIHwgNCArKystCiAzIGZpbGVzIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgMyBk
ZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hdG9t
LmMgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hdG9tLmMKaW5kZXggNGNmYzc4NjY5OWM3
Li4xYjBjNjc0ZmFiMjUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2F0
b20uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hdG9tLmMKQEAgLTEyMjYsNyAr
MTIyNiw3IEBAIHN0YXRpYyBpbnQgYW1kZ3B1X2F0b21fZXhlY3V0ZV90YWJsZV9sb2NrZWQoc3Ry
dWN0IGF0b21fY29udGV4dCAqY3R4LCBpbnQgaW5kZXgsCiAJZWN0eC5hYm9ydCA9IGZhbHNlOwog
CWVjdHgubGFzdF9qdW1wID0gMDsKIAlpZiAod3MpCi0JCWVjdHgud3MgPSBrY2FsbG9jKDQsIHdz
LCBHRlBfS0VSTkVMKTsKKwkJZWN0eC53cyA9IGtjYWxsb2MoNCwgd3MsIEdGUF9BVE9NSUMpOwog
CWVsc2UKIAkJZWN0eC53cyA9IE5VTEw7CiAKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9h
bWQvZGlzcGxheS9hbWRncHVfZG0vYW1kZ3B1X2RtLmMgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2Rp
c3BsYXkvYW1kZ3B1X2RtL2FtZGdwdV9kbS5jCmluZGV4IGFkYWJmYTkyOWY0Mi4uYzU3NWU3Mzk0
ZDAzIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2Rpc3BsYXkvYW1kZ3B1X2RtL2Ft
ZGdwdV9kbS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvZGlzcGxheS9hbWRncHVfZG0vYW1k
Z3B1X2RtLmMKQEAgLTY4MzMsNyArNjgzMyw3IEBAIHN0YXRpYyB2b2lkIGFtZGdwdV9kbV9jb21t
aXRfcGxhbmVzKHN0cnVjdCBkcm1fYXRvbWljX3N0YXRlICpzdGF0ZSwKIAkJc3RydWN0IGRjX3N0
cmVhbV91cGRhdGUgc3RyZWFtX3VwZGF0ZTsKIAl9ICpidW5kbGU7CiAKLQlidW5kbGUgPSBremFs
bG9jKHNpemVvZigqYnVuZGxlKSwgR0ZQX0tFUk5FTCk7CisJYnVuZGxlID0ga3phbGxvYyhzaXpl
b2YoKmJ1bmRsZSksIEdGUF9BVE9NSUMpOwogCiAJaWYgKCFidW5kbGUpIHsKIAkJZG1fZXJyb3Io
IkZhaWxlZCB0byBhbGxvY2F0ZSB1cGRhdGUgYnVuZGxlXG4iKTsKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9hbWQvZGlzcGxheS9kYy9jb3JlL2RjLmMgYi9kcml2ZXJzL2dwdS9kcm0vYW1k
L2Rpc3BsYXkvZGMvY29yZS9kYy5jCmluZGV4IDQ1Y2ZiN2M0NTU2Ni4uOWE4ZTMyMWE3YTE1IDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2Rpc3BsYXkvZGMvY29yZS9kYy5jCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9hbWQvZGlzcGxheS9kYy9jb3JlL2RjLmMKQEAgLTE0MTYsOCArMTQx
NiwxMCBAQCBib29sIGRjX3Bvc3RfdXBkYXRlX3N1cmZhY2VzX3RvX3N0cmVhbShzdHJ1Y3QgZGMg
KmRjKQogCiBzdHJ1Y3QgZGNfc3RhdGUgKmRjX2NyZWF0ZV9zdGF0ZShzdHJ1Y3QgZGMgKmRjKQog
eworCS8qIE5vIHlvdSByZWFsbHkgY2FudCBhbGxvY2F0ZSByYW5kb20gY3JhcCBoZXJlIHRoaXMg
bGF0ZSBpbgorCSAqIGF0b21pY19jb21taXRfdGFpbC4gKi8KIAlzdHJ1Y3QgZGNfc3RhdGUgKmNv
bnRleHQgPSBrdnphbGxvYyhzaXplb2Yoc3RydWN0IGRjX3N0YXRlKSwKLQkJCQkJICAgIEdGUF9L
RVJORUwpOworCQkJCQkgICAgR0ZQX0FUT01JQyk7CiAKIAlpZiAoIWNvbnRleHQpCiAJCXJldHVy
biBOVUxMOwotLSAKMi4yNi4yCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3Rz
LmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
YXJvLW1tLXNpZwo=
