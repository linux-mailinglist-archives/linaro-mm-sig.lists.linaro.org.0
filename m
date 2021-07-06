Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id C20373BCE5B
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  6 Jul 2021 13:25:41 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1400666942
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  6 Jul 2021 11:25:40 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id A119A6693F; Tue,  6 Jul 2021 11:25:38 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B1A13607F1;
	Tue,  6 Jul 2021 11:25:34 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 6E606604FE
 for <linaro-mm-sig@lists.linaro.org>; Tue,  6 Jul 2021 11:25:29 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 6C04D60BC6; Tue,  6 Jul 2021 11:25:29 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by lists.linaro.org (Postfix) with ESMTPS id 3DE1B604FE
 for <linaro-mm-sig@lists.linaro.org>; Tue,  6 Jul 2021 11:25:27 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7D8B361E9F;
 Tue,  6 Jul 2021 11:25:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1625570726;
 bh=M6GNRjaiGoU075Gb/3SUC/E2uZ2SyiNzb2Ji1eBbKpc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=ICQOGvK9lL9b8NK65n69Mwrb57nyGxfjp34Jh3PvYY2RjEWaNpNhmGokrRZcD4Y6H
 w20PE7NF1ZoIo5BcguYQQggMfCv22nLinwlyCOESbGW+yAQtgDKER8idwnjlg+l1v8
 xoB3tMhSqoT67ApE2a/ZFgSSMEF/Oso1X3sSXhFRp5NRtDGYi7lCbg/2UUwjY+g8r1
 I5rJYcDBPtT182xes7Ns6C3FqkgIK1vSqXkBbS/5n+lHGwRAdMRzlIp3Dz7ESQDz3W
 ykszEL7ChODElj6fxtybZrdXv0Hsufd/CKWhsnk7NhR+rO+rwgfq/HsWxOE30y3tko
 UqG/72vb/jXdA==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Tue,  6 Jul 2021 07:24:06 -0400
Message-Id: <20210706112502.2064236-18-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210706112502.2064236-1-sashal@kernel.org>
References: <20210706112502.2064236-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH AUTOSEL 5.4 18/74] drm/sched: Avoid data
 corruptions
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
Cc: Sasha Levin <sashal@kernel.org>,
 Andrey Grodzovsky <andrey.grodzovsky@amd.com>, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

RnJvbTogQW5kcmV5IEdyb2R6b3Zza3kgPGFuZHJleS5ncm9kem92c2t5QGFtZC5jb20+CgpbIFVw
c3RyZWFtIGNvbW1pdCAwYjEwYWI4MDY5NWQ2MTQyMjMzN2VkZTZmZjQ5NjU1MmQ4YWNlOTlkIF0K
CldhaXQgZm9yIGFsbCBkZXBlbmRlbmNpZXMgb2YgYSBqb2IgIHRvIGNvbXBsZXRlIGJlZm9yZQpr
aWxsaW5nIGl0IHRvIGF2b2lkIGRhdGEgY29ycnVwdGlvbnMuCgpTaWduZWQtb2ZmLWJ5OiBBbmRy
ZXkgR3JvZHpvdnNreSA8YW5kcmV5Lmdyb2R6b3Zza3lAYW1kLmNvbT4KUmV2aWV3ZWQtYnk6IENo
cmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KTGluazogaHR0cHM6Ly9w
YXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3BhdGNoL21zZ2lkLzIwMjEwNTE5MTQxNDA3Ljg4NDQ0
LTEtYW5kcmV5Lmdyb2R6b3Zza3lAYW1kLmNvbQpTaWduZWQtb2ZmLWJ5OiBTYXNoYSBMZXZpbiA8
c2FzaGFsQGtlcm5lbC5vcmc+Ci0tLQogZHJpdmVycy9ncHUvZHJtL3NjaGVkdWxlci9zY2hlZF9l
bnRpdHkuYyB8IDUgKysrKysKIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKykKCmRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vc2NoZWR1bGVyL3NjaGVkX2VudGl0eS5jIGIvZHJpdmVy
cy9ncHUvZHJtL3NjaGVkdWxlci9zY2hlZF9lbnRpdHkuYwppbmRleCAxYTUxNTMxOTdmZTkuLjU3
ZjliYWFkOWUzNiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL3NjaGVkdWxlci9zY2hlZF9l
bnRpdHkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vc2NoZWR1bGVyL3NjaGVkX2VudGl0eS5jCkBA
IC0yMzUsMTEgKzIzNSwxNiBAQCBzdGF0aWMgdm9pZCBkcm1fc2NoZWRfZW50aXR5X2tpbGxfam9i
c19jYihzdHJ1Y3QgZG1hX2ZlbmNlICpmLAogc3RhdGljIHZvaWQgZHJtX3NjaGVkX2VudGl0eV9r
aWxsX2pvYnMoc3RydWN0IGRybV9zY2hlZF9lbnRpdHkgKmVudGl0eSkKIHsKIAlzdHJ1Y3QgZHJt
X3NjaGVkX2pvYiAqam9iOworCXN0cnVjdCBkbWFfZmVuY2UgKmY7CiAJaW50IHI7CiAKIAl3aGls
ZSAoKGpvYiA9IHRvX2RybV9zY2hlZF9qb2Ioc3BzY19xdWV1ZV9wb3AoJmVudGl0eS0+am9iX3F1
ZXVlKSkpKSB7CiAJCXN0cnVjdCBkcm1fc2NoZWRfZmVuY2UgKnNfZmVuY2UgPSBqb2ItPnNfZmVu
Y2U7CiAKKwkJLyogV2FpdCBmb3IgYWxsIGRlcGVuZGVuY2llcyB0byBhdm9pZCBkYXRhIGNvcnJ1
cHRpb25zICovCisJCXdoaWxlICgoZiA9IGpvYi0+c2NoZWQtPm9wcy0+ZGVwZW5kZW5jeShqb2Is
IGVudGl0eSkpKQorCQkJZG1hX2ZlbmNlX3dhaXQoZiwgZmFsc2UpOworCiAJCWRybV9zY2hlZF9m
ZW5jZV9zY2hlZHVsZWQoc19mZW5jZSk7CiAJCWRtYV9mZW5jZV9zZXRfZXJyb3IoJnNfZmVuY2Ut
PmZpbmlzaGVkLCAtRVNSQ0gpOwogCi0tIAoyLjMwLjIKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFy
by1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
