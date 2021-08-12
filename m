Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 832253EA548
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 12 Aug 2021 15:14:30 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 45306623DC
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 12 Aug 2021 13:14:29 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 2022F61A47; Thu, 12 Aug 2021 13:14:28 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 91D0761100;
	Thu, 12 Aug 2021 13:14:24 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 4A7AB60D70
 for <linaro-mm-sig@lists.linaro.org>; Thu, 12 Aug 2021 13:14:22 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 3EB6F61100; Thu, 12 Aug 2021 13:14:22 +0000 (UTC)
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com
 [209.85.128.48])
 by lists.linaro.org (Postfix) with ESMTPS id 34B2C60D70
 for <linaro-mm-sig@lists.linaro.org>; Thu, 12 Aug 2021 13:14:20 +0000 (UTC)
Received: by mail-wm1-f48.google.com with SMTP id
 k5-20020a05600c1c85b02902e699a4d20cso4547797wms.2
 for <linaro-mm-sig@lists.linaro.org>; Thu, 12 Aug 2021 06:14:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=dmErGBV7VXck18Gc2qFrnojMPrzyI2EPrDXNv3U1XmY=;
 b=CYOg+LUjp256t2um90jzwNbIMAWQqkmOEyFN5EaBp2h4O1nKvX8H8o+CpGJVu0cvra
 Bi59H593zFqTO0Tjipd0y7gxXb6Ue/uv7MOnvMvMSbigvqtdo3oKpION6K2wkaAQM/Ot
 psaWaQkhb4+YONaercPJtRtGxTcp9kDY4zUv0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=dmErGBV7VXck18Gc2qFrnojMPrzyI2EPrDXNv3U1XmY=;
 b=snNlGgukuAbkoBkZiwtyZ6y4CKUmFlXqj6VV1oQIpyiec5Wj2FjbdJrC70urTId+TC
 h+JzuDnSPlY3xF5cotH2b4EsogbcsyP0PzNsnebKIeZ7rT3XcvmLsHotCD41be5J2Vrt
 Ji4jtDR9PxWyq/mz35saTNTKl1JI5NDRyvXyVXQNYtkQXy3EzzGE8rreVPN+wBtBQW1y
 388n+pO2GYJ5ky6Q0Ce562lKu5SjI4yi68gT5YFRSCPuQf5MYPmoejHyDetF0/cJjJ0o
 ZXjTHAjhfmKwbyRbpMyZ7YSO/VReOu4mpnPJmRozMpC9d0eJupUOB2QCygQUO0vYx2Tz
 I3JA==
X-Gm-Message-State: AOAM5300dkOr6xHjmdgPbvQvIZj5lp15h+iTrT1xIh0Km4NaEJlmKaCB
 PcRCyVuijULREzElcVt+/I892Q==
X-Google-Smtp-Source: ABdhPJwkvxrgUNLDCUG2WS460z2SKSCQl05C+7mRo54qZ58QNtO0XiYEVEgB1vN4eNSqQUwqOsYJGA==
X-Received: by 2002:a1c:4e02:: with SMTP id g2mr15899917wmh.150.1628774059127; 
 Thu, 12 Aug 2021 06:14:19 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id h4sm2914957wru.2.2021.08.12.06.14.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Aug 2021 06:14:18 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Thu, 12 Aug 2021 15:14:09 +0200
Message-Id: <20210812131412.2487363-1-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 1/4] dma-buf: Require VM_PFNMAP vma for mmap
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Matthew Wilcox <willy@infradead.org>, linaro-mm-sig@lists.linaro.org,
 Jason Gunthorpe <jgg@ziepe.ca>, John Stultz <john.stultz@linaro.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Suren Baghdasaryan <surenb@google.com>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

dGxkcjsgRE1BIGJ1ZmZlcnMgYXJlbid0IG5vcm1hbCBtZW1vcnksIGV4cGVjdGluZyB0aGF0IHlv
dSBjYW4gdXNlCnRoZW0gbGlrZSB0aGF0IChsaWtlIGNhbGxpbmcgZ2V0X3VzZXJfcGFnZXMgd29y
a3MsIG9yIHRoYXQgdGhleSdyZQphY2NvdW50aW5nIGxpa2UgYW55IG90aGVyIG5vcm1hbCBtZW1v
cnkpIGNhbm5vdCBiZSBndWFyYW50ZWVkLgoKU2luY2Ugc29tZSB1c2Vyc3BhY2Ugb25seSBydW5z
IG9uIGludGVncmF0ZWQgZGV2aWNlcywgd2hlcmUgYWxsCmJ1ZmZlcnMgYXJlIGFjdHVhbGx5IGFs
bCByZXNpZGVudCBzeXN0ZW0gbWVtb3J5LCB0aGVyZSdzIGEgaHVnZQp0ZW1wdGF0aW9uIHRvIGFz
c3VtZSB0aGF0IGEgc3RydWN0IHBhZ2UgaXMgYWx3YXlzIHByZXNlbnQgYW5kIHVzZWFibGUKbGlr
ZSBmb3IgYW55IG1vcmUgcGFnZWNhY2hlIGJhY2tlZCBtbWFwLiBUaGlzIGhhcyB0aGUgcG90ZW50
aWFsIHRvCnJlc3VsdCBpbiBhIHVhcGkgbmlnaHRtYXJlLgoKVG8gc3RvcCB0aGlzIGdhcCByZXF1
aXJlIHRoYXQgRE1BIGJ1ZmZlciBtbWFwcyBhcmUgVk1fUEZOTUFQLCB3aGljaApibG9ja3MgZ2V0
X3VzZXJfcGFnZXMgYW5kIGFsbCB0aGUgb3RoZXIgc3RydWN0IHBhZ2UgYmFzZWQKaW5mcmFzdHJ1
Y3R1cmUgZm9yIGV2ZXJ5b25lLiBJbiBzcGlyaXQgdGhpcyBpcyB0aGUgdWFwaSBjb3VudGVycGFy
dCB0bwp0aGUga2VybmVsLWludGVybmFsIENPTkZJR19ETUFCVUZfREVCVUcuCgpNb3RpdmF0ZWQg
YnkgYSByZWNlbnQgcGF0Y2ggd2hpY2ggd2FudGVkIHRvIHN3aWNoIHRoZSBzeXN0ZW0gZG1hLWJ1
ZgpoZWFwIHRvIHZtX2luc2VydF9wYWdlIGluc3RlYWQgb2Ygdm1faW5zZXJ0X3Bmbi4KCnYyOgoK
SmFzb24gYnJvdWdodCB1cCB0aGF0IHdlIGFsc28gd2FudCB0byBndWFyYW50ZWUgdGhhdCBhbGwg
cHRlcyBoYXZlIHRoZQpwdGVfc3BlY2lhbCBmbGFnIHNldCwgdG8gY2F0Y2ggZmFzdCBnZXRfdXNl
cl9wYWdlcyAob24gYXJjaGl0ZWN0dXJlcwp0aGF0IHN1cHBvcnQgdGhpcykuIEFsbG93aW5nIFZN
X01JWEVETUFQIChsaWtlIFZNX1NQRUNJQUwgZG9lcykgd291bGQKc3RpbGwgYWxsb3cgdm1faW5z
ZXJ0X3BhZ2UsIGJ1dCBsaW1pdGluZyB0byBWTV9QRk5NQVAgd2lsbCBjYXRjaCB0aGF0LgoKRnJv
bSBhdWRpdGluZyB0aGUgdmFyaW91cyBmdW5jdGlvbnMgdG8gaW5zZXJ0IHBmbiBwdGUgZW50aXJl
cwoodm1faW5zZXJ0X3Bmbl9wcm90LCByZW1hcF9wZm5fcmFuZ2UgYW5kIGFsbCBpdCdzIGNhbGxl
cnMgbGlrZQpkbWFfbW1hcF93YykgaXQgbG9va3MgbGlrZSBWTV9QRk5NQVAgaXMgYWxyZWFkeSBy
ZXF1aXJlZCBhbnl3YXksIHNvCnRoaXMgc2hvdWxkIGJlIHRoZSBjb3JyZWN0IGZsYWcgdG8gY2hl
Y2sgZm9yLgoKdjM6IENoYW5nZSB0byBXQVJOX09OX09OQ0UgKFRob21hcyBaaW1tZXJtYW5uKQoK
UmVmZXJlbmNlczogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGttbC9DQUtNSzd1SGkrbUcwejBI
VW1OdDEzUUNDdnV0dVJWanBjUjBOalJMMTJrLVdiV3prUmdAbWFpbC5nbWFpbC5jb20vCkFja2Vk
LWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+CkFja2VkLWJ5
OiBUaG9tYXMgWmltbWVybWFubiA8dHppbW1lcm1hbm5Ac3VzZS5kZT4KQ2M6IFRob21hcyBaaW1t
ZXJtYW5uIDx0emltbWVybWFubkBzdXNlLmRlPgpDYzogSmFzb24gR3VudGhvcnBlIDxqZ2dAemll
cGUuY2E+CkNjOiBTdXJlbiBCYWdoZGFzYXJ5YW4gPHN1cmVuYkBnb29nbGUuY29tPgpDYzogTWF0
dGhldyBXaWxjb3ggPHdpbGx5QGluZnJhZGVhZC5vcmc+CkNjOiBKb2huIFN0dWx0eiA8am9obi5z
dHVsdHpAbGluYXJvLm9yZz4KU2lnbmVkLW9mZi1ieTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZl
dHRlckBpbnRlbC5jb20+CkNjOiBTdW1pdCBTZW13YWwgPHN1bWl0LnNlbXdhbEBsaW5hcm8ub3Jn
PgpDYzogIkNocmlzdGlhbiBLw7ZuaWciIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+CkNjOiBs
aW51eC1tZWRpYUB2Z2VyLmtlcm5lbC5vcmcKQ2M6IGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJv
Lm9yZwotLQpSZXNlbmRpbmcgdGhpcyBzbyBJIGNhbiB0ZXN0IHRoZSBuZXh0IHBhdGNoZXMgZm9y
IHZnZW0vc2htZW0gaW4KaW50ZWwtZ2Z4LWNpLgoKTm8gaW1tZWRpYXRlIHBsYW5zIHRvIG1lcmdl
IHRoaXMgcGF0Y2ggaGVyZSBzaW5jZSB0dG0gaXNuJ3QgYWRkcmVzc2VkCnlldCAoYW5kIHRoZXJl
IHdlIGhhdmUgdGhlIGh1Z2VwdGUgaXNzdWUsIGZvciB3aGljaCBJIGRvbid0IHRoaW5rIHdlCmhh
dmUgYSBjbGVhciBjb25zZW5zdXMgeWV0KS4KLURhbmllbAotLS0KIGRyaXZlcnMvZG1hLWJ1Zi9k
bWEtYnVmLmMgfCAxNSArKysrKysrKysrKysrLS0KIDEgZmlsZSBjaGFuZ2VkLCAxMyBpbnNlcnRp
b25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEt
YnVmLmMgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jCmluZGV4IDYzZDMyMjYxYjYzZi4uZDE5
YjFjZjZjMzRmIDEwMDY0NAotLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jCisrKyBiL2Ry
aXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMKQEAgLTEzMCw2ICsxMzAsNyBAQCBzdGF0aWMgc3RydWN0
IGZpbGVfc3lzdGVtX3R5cGUgZG1hX2J1Zl9mc190eXBlID0gewogc3RhdGljIGludCBkbWFfYnVm
X21tYXBfaW50ZXJuYWwoc3RydWN0IGZpbGUgKmZpbGUsIHN0cnVjdCB2bV9hcmVhX3N0cnVjdCAq
dm1hKQogewogCXN0cnVjdCBkbWFfYnVmICpkbWFidWY7CisJaW50IHJldDsKIAogCWlmICghaXNf
ZG1hX2J1Zl9maWxlKGZpbGUpKQogCQlyZXR1cm4gLUVJTlZBTDsKQEAgLTE0NSw3ICsxNDYsMTEg
QEAgc3RhdGljIGludCBkbWFfYnVmX21tYXBfaW50ZXJuYWwoc3RydWN0IGZpbGUgKmZpbGUsIHN0
cnVjdCB2bV9hcmVhX3N0cnVjdCAqdm1hKQogCSAgICBkbWFidWYtPnNpemUgPj4gUEFHRV9TSElG
VCkKIAkJcmV0dXJuIC1FSU5WQUw7CiAKLQlyZXR1cm4gZG1hYnVmLT5vcHMtPm1tYXAoZG1hYnVm
LCB2bWEpOworCXJldCA9IGRtYWJ1Zi0+b3BzLT5tbWFwKGRtYWJ1Ziwgdm1hKTsKKworCVdBUk5f
T05fT05DRSghKHZtYS0+dm1fZmxhZ3MgJiBWTV9QRk5NQVApKTsKKworCXJldHVybiByZXQ7CiB9
CiAKIHN0YXRpYyBsb2ZmX3QgZG1hX2J1Zl9sbHNlZWsoc3RydWN0IGZpbGUgKmZpbGUsIGxvZmZf
dCBvZmZzZXQsIGludCB3aGVuY2UpCkBAIC0xMjYwLDYgKzEyNjUsOCBAQCBFWFBPUlRfU1lNQk9M
X0dQTChkbWFfYnVmX2VuZF9jcHVfYWNjZXNzKTsKIGludCBkbWFfYnVmX21tYXAoc3RydWN0IGRt
YV9idWYgKmRtYWJ1Ziwgc3RydWN0IHZtX2FyZWFfc3RydWN0ICp2bWEsCiAJCSB1bnNpZ25lZCBs
b25nIHBnb2ZmKQogeworCWludCByZXQ7CisKIAlpZiAoV0FSTl9PTighZG1hYnVmIHx8ICF2bWEp
KQogCQlyZXR1cm4gLUVJTlZBTDsKIApAQCAtMTI4MCw3ICsxMjg3LDExIEBAIGludCBkbWFfYnVm
X21tYXAoc3RydWN0IGRtYV9idWYgKmRtYWJ1Ziwgc3RydWN0IHZtX2FyZWFfc3RydWN0ICp2bWEs
CiAJdm1hX3NldF9maWxlKHZtYSwgZG1hYnVmLT5maWxlKTsKIAl2bWEtPnZtX3Bnb2ZmID0gcGdv
ZmY7CiAKLQlyZXR1cm4gZG1hYnVmLT5vcHMtPm1tYXAoZG1hYnVmLCB2bWEpOworCXJldCA9IGRt
YWJ1Zi0+b3BzLT5tbWFwKGRtYWJ1Ziwgdm1hKTsKKworCVdBUk5fT05fT05DRSghKHZtYS0+dm1f
ZmxhZ3MgJiBWTV9QRk5NQVApKTsKKworCXJldHVybiByZXQ7CiB9CiBFWFBPUlRfU1lNQk9MX0dQ
TChkbWFfYnVmX21tYXApOwogCi0tIAoyLjMyLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1t
bS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW5hcm8tbW0tc2lnCg==
