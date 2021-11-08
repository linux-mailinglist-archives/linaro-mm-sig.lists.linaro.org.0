Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 253E544A02F
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  9 Nov 2021 01:59:53 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4ED3F6070F
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  9 Nov 2021 00:59:50 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 293BC60BCA; Tue,  9 Nov 2021 00:59:48 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 87511606F5;
	Tue,  9 Nov 2021 00:59:44 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id E5F3F6037C
 for <linaro-mm-sig@lists.linaro.org>; Tue,  9 Nov 2021 00:59:42 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id E3BBA606F5; Tue,  9 Nov 2021 00:59:42 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by lists.linaro.org (Postfix) with ESMTPS id C2AE16037C
 for <linaro-mm-sig@lists.linaro.org>; Tue,  9 Nov 2021 00:59:40 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id EE649611BD;
 Tue,  9 Nov 2021 00:59:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1636419579;
 bh=qmHOld4pvSzd7AF+W6wQ4Nj6bQyCu6INWj0h1+yktDw=;
 h=From:To:Cc:Subject:Date:From;
 b=hYPmH3UYjMsL2pTdfIZmE+jerAc18ju/8lYAOtJ+oKbjmiKjszLfe3Hny6AxspflR
 NmzZgfbe/YOasgDuZX+loVZLub2Z8caH54Woj7ztEXOD5kJU5IkPZ6iV6H1LKtGprM
 974wRO2NeS7t0UX9SzenjcRBcaD/6DuvxRMANFNH00FOs3WbB45DKLtlsNa5SraXvq
 egwygga6Lp6eBwYWXtJlbypcCd4ijuzy9WztiZjtN7craHP1rQu6YjyEv42Y/QgP9+
 eCzsN43PcLpmiyJ9qGs1oiOdMooSFmmEjtzpofeBVzY7eEd5kua9NQ3rjQVjbLzvj5
 FWLALIqtMjHbw==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Mon,  8 Nov 2021 12:42:28 -0500
Message-Id: <20211108174453.1187052-1-sashal@kernel.org>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH AUTOSEL 5.15 001/146] dma-buf: WARN on
 dmabuf release with pending attachments
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
Cc: Sasha Levin <sashal@kernel.org>, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, Charan Teja Reddy <charante@codeaurora.org>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

RnJvbTogQ2hhcmFuIFRlamEgUmVkZHkgPGNoYXJhbnRlQGNvZGVhdXJvcmEub3JnPgoKWyBVcHN0
cmVhbSBjb21taXQgZjQ5MjI4M2IxNTcwNTNlOTU1NTc4NzI2MmYwNThhZTMzMDk2ZjU2OCBdCgpJ
dCBpcyBleHBlY3RlZCBmcm9tIHRoZSBjbGllbnRzIHRvIGZvbGxvdyB0aGUgYmVsb3cgc3RlcHMg
b24gYW4gaW1wb3J0ZWQKZG1hYnVmIGZkOgphKSBkbWFidWYgPSBkbWFfYnVmX2dldChmZCkgLy8g
R2V0IHRoZSBkbWFidWYgZnJvbSBmZApiKSBkbWFfYnVmX2F0dGFjaChkbWFidWYpOyAvLyBDbGll
bnRzIGF0dGFjaCB0byB0aGUgZG1hYnVmCiAgIG8gSGVyZSB0aGUga2VybmVsIGRvZXMgc29tZSBz
bGFiIGFsbG9jYXRpb25zLCBzYXkgZm9yCmRtYV9idWZfYXR0YWNobWVudCBhbmQgbWF5IGJlIHNv
bWUgb3RoZXIgc2xhYiBhbGxvY2F0aW9uIGluIHRoZQpkbWFidWYtPm9wcy0+YXR0YWNoKCkuCmMp
IENsaWVudCBtYXkgbmVlZCB0byBkbyBkbWFfYnVmX21hcF9hdHRhY2htZW50KCkuCmQpIEFjY29y
ZGluZ2x5IGRtYV9idWZfdW5tYXBfYXR0YWNobWVudCgpIHNob3VsZCBiZSBjYWxsZWQuCmUpIGRt
YV9idWZfZGV0YWNoICgpIC8vIENsaWVudHMgZGV0YWNoIHRvIHRoZSBkbWFidWYuCiAgIG8gSGVy
ZSB0aGUgc2xhYiBhbGxvY2F0aW9ucyBtYWRlIGluIGIpIGFyZSBmcmVlZC4KZikgZG1hX2J1Zl9w
dXQoZG1hYnVmKSAvLyBDYW4gZnJlZSB0aGUgZG1hYnVmIGlmIGl0IGlzIHRoZSBsYXN0CnJlZmVy
ZW5jZS4KCk5vdyBzYXkgYW4gZXJyb25lb3VzIGNsaWVudCBmYWlsZWQgYXQgc3RlcCBjKSBhYm92
ZSB0aHVzIGl0IGRpcmVjdGx5CmNhbGxlZCBkbWFfYnVmX3B1dCgpLCBzdGVwIGYpIGFib3ZlLiBD
b25zaWRlcmluZyB0aGF0IGl0IG1heSBiZSB0aGUgbGFzdApyZWZlcmVuY2UgdG8gdGhlIGRtYWJ1
ZiwgYnVmZmVyIHdpbGwgYmUgZnJlZWQgd2l0aCBwZW5kaW5nIGF0dGFjaG1lbnRzCmxlZnQgdG8g
dGhlIGRtYWJ1ZiB3aGljaCBjYW4gc2hvdyB1cCBhcyB0aGUgJ21lbW9yeSBsZWFrJy4gVGhpcyBz
aG91bGQKYXQgbGVhc3QgYmUgcmVwb3J0ZWQgYXMgdGhlIFdBUk4oKS4KClNpZ25lZC1vZmYtYnk6
IENoYXJhbiBUZWphIFJlZGR5IDxjaGFyYW50ZUBjb2RlYXVyb3JhLm9yZz4KUmV2aWV3ZWQtYnk6
IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KTGluazogaHR0cHM6
Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3BhdGNoL21zZ2lkLzE2MjcwNDM0NjgtMTYzODEt
MS1naXQtc2VuZC1lbWFpbC1jaGFyYW50ZUBjb2RlYXVyb3JhLm9yZwpTaWduZWQtb2ZmLWJ5OiBD
aHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+ClNpZ25lZC1vZmYtYnk6
IFNhc2hhIExldmluIDxzYXNoYWxAa2VybmVsLm9yZz4KLS0tCiBkcml2ZXJzL2RtYS1idWYvZG1h
LWJ1Zi5jIHwgMSArCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykKCmRpZmYgLS1naXQg
YS9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYwpp
bmRleCA2M2QzMjI2MWI2M2ZmLi40NzRkZTJkOTg4Y2E3IDEwMDY0NAotLS0gYS9kcml2ZXJzL2Rt
YS1idWYvZG1hLWJ1Zi5jCisrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMKQEAgLTgyLDYg
KzgyLDcgQEAgc3RhdGljIHZvaWQgZG1hX2J1Zl9yZWxlYXNlKHN0cnVjdCBkZW50cnkgKmRlbnRy
eSkKIAlpZiAoZG1hYnVmLT5yZXN2ID09IChzdHJ1Y3QgZG1hX3Jlc3YgKikmZG1hYnVmWzFdKQog
CQlkbWFfcmVzdl9maW5pKGRtYWJ1Zi0+cmVzdik7CiAKKwlXQVJOX09OKCFsaXN0X2VtcHR5KCZk
bWFidWYtPmF0dGFjaG1lbnRzKSk7CiAJbW9kdWxlX3B1dChkbWFidWYtPm93bmVyKTsKIAlrZnJl
ZShkbWFidWYtPm5hbWUpOwogCWtmcmVlKGRtYWJ1Zik7Ci0tIAoyLjMzLjAKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGlu
ZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFy
by5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
