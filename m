Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C08276E90E
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  3 Aug 2023 15:03:34 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0568B44FA6
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  3 Aug 2023 13:03:33 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id C5A6D3F095
	for <linaro-mm-sig@lists.linaro.org>; Thu,  3 Aug 2023 13:03:25 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=QBdn5p71;
	spf=pass (lists.linaro.org: domain of sashal@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=sashal@kernel.org;
	dmarc=pass (policy=none) header.from=kernel.org
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 5ABC361D7E;
	Thu,  3 Aug 2023 13:03:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 37721C433C7;
	Thu,  3 Aug 2023 13:03:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691067804;
	bh=EM39itBcbN7Mjgyn0t1kV7w4owOpAntw0KP1b1TLh4o=;
	h=From:To:Cc:Subject:Date:From;
	b=QBdn5p711H9F06/aTeC6MyfO1S9DU2slkYUbUsY/ELHurAJ+cJ/BILBUgDVbilh5R
	 6+LsYkKrENWqX5NOAQViGs8zzn/1sLqsndB95AB/kTqfs3Gjxf42B9bvpiSQju560f
	 lFtZQV0kEE1/52uXdcXWehAZWjY/JTMhdye3TmBJkwM50UhASeXg/e1XLsLiMrRAPx
	 F5eK9Tj2vPlDxklBjilV4Zp7UbPemftVUGy1TYq7f5+fK+KxTY0feTNkKPOVslU5Yf
	 soIbHVGZ12OgS6AA5LvTrXu8HJs+LbIiKYK3/Impko8/8xqoKlztn+ULtOLn7EjbGK
	 49Xwr0yFlbb4g==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Thu,  3 Aug 2023 09:03:14 -0400
Message-Id: <20230803130321.641516-1-sashal@kernel.org>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 6.4.7
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: C5A6D3F095
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.50 / 15.00];
	DWL_DNSWL_HI(-3.50)[kernel.org:dkim];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	R_SPF_ALLOW(-0.20)[+a:dfw.source.kernel.org];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	NEURAL_HAM(-0.00)[-1.000];
	MIME_TRACE(0.00)[0:+];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_CC(0.00)[collabora.com,imgtec.com,amd.com,gmail.com,ffwll.ch,linaro.org,kernel.org,lists.freedesktop.org,vger.kernel.org,lists.linaro.org];
	ASN(0.00)[asn:54825, ipnet:139.178.80.0/21, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_TLS_ALL(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	FROM_HAS_DN(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2]
Message-ID-Hash: KDSZSHWERNGJEXPFHAKFPDYGXS235HDA
X-Message-ID-Hash: KDSZSHWERNGJEXPFHAKFPDYGXS235HDA
X-MailFrom: sashal@kernel.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Boris Brezillon <boris.brezillon@collabora.com>, Frank Binns <frank.binns@imgtec.com>, Sarah Walker <sarah.walker@imgtec.com>, Donald Robson <donald.robson@imgtec.com>, Luben Tuikov <luben.tuikov@amd.com>, Daniel Vetter <daniel@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Sasha Levin <sashal@kernel.org>, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH AUTOSEL 6.4 1/7] drm/sched: Make sure we wait for all dependencies in kill_jobs_cb()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/KDSZSHWERNGJEXPFHAKFPDYGXS235HDA/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

RnJvbTogQm9yaXMgQnJlemlsbG9uIDxib3Jpcy5icmV6aWxsb25AY29sbGFib3JhLmNvbT4NCg0K
WyBVcHN0cmVhbSBjb21taXQgZTMwY2IwNTk5Nzk5YWFjMDk5MjA5ZTNiMDQ1Mzc5NjEzYzgwNzMw
ZSBdDQoNCmRybV9zY2hlZF9lbnRpdHlfa2lsbF9qb2JzX2NiKCkgbG9naWMgaXMgb21pdHRpbmcg
dGhlIGxhc3QgZmVuY2UgcG9wcGVkDQpmcm9tIHRoZSBkZXBlbmRlbmN5IGFycmF5IHRoYXQgd2Fz
IHdhaXRlZCB1cG9uIGJlZm9yZQ0KZHJtX3NjaGVkX2VudGl0eV9raWxsKCkgd2FzIGNhbGxlZCAo
ZHJtX3NjaGVkX2VudGl0eTo6ZGVwZW5kZW5jeSBmaWVsZCksDQpzbyB3ZSdyZSBiYXNpY2FsbHkg
d2FpdGluZyBmb3IgYWxsIGRlcGVuZGVuY2llcyBleGNlcHQgb25lLg0KDQpJbiB0aGVvcnksIHRo
aXMgd2FpdCBzaG91bGRuJ3QgYmUgbmVlZGVkIGJlY2F1c2UgcmVzb3VyY2VzIHNob3VsZCBoYXZl
DQp0aGVpciB1c2VycyByZWdpc3RlcmVkIHRvIHRoZSBkbWFfcmVzdiBvYmplY3QsIHRodXMgZ3Vh
cmFudGVlaW5nIHRoYXQNCmZ1dHVyZSBqb2JzIHdhbnRpbmcgdG8gYWNjZXNzIHRoZXNlIHJlc291
cmNlcyB3YWl0IG9uIGFsbCB0aGUgcHJldmlvdXMNCnVzZXJzIChkZXBlbmRpbmcgb24gdGhlIGFj
Y2VzcyB0eXBlLCBvZiBjb3Vyc2UpLiBCdXQgd2Ugd2FudCB0byBrZWVwDQp0aGVzZSBleHBsaWNp
dCB3YWl0cyBpbiB0aGUga2lsbCBlbnRpdHkgcGF0aCBqdXN0IGluIGNhc2UuDQoNCkxldCdzIG1h
a2Ugc3VyZSB3ZSBrZWVwIGFsbCBkZXBlbmRlbmNpZXMgaW4gdGhlIGFycmF5IGluDQpkcm1fc2No
ZWRfam9iX2RlcGVuZGVuY3koKSwgc28gd2UgY2FuIGl0ZXJhdGUgb3ZlciB0aGUgYXJyYXkgYW5k
IHdhaXQNCmluIGRybV9zY2hlZF9lbnRpdHlfa2lsbF9qb2JzX2NiKCkuDQoNCldlIGFsc28gbWFr
ZSBzdXJlIHdlIHdhaXQgb24gZHJtX3NjaGVkX2ZlbmNlOjpmaW5pc2hlZCBpZiB3ZSB3ZXJlDQpv
cmlnaW5hbGx5IGFza2VkIHRvIHdhaXQgb24gZHJtX3NjaGVkX2ZlbmNlOjpzY2hlZHVsZWQuIElu
IHRoYXQgY2FzZSwNCndlIGFzc3VtZSB0aGUgaW50ZW50IHdhcyB0byBkZWxlZ2F0ZSB0aGUgd2Fp
dCB0byB0aGUgZmlybXdhcmUvR1BVIG9yDQpyZWx5IG9uIHRoZSBwaXBlbGluaW5nIGRvbmUgYXQg
dGhlIGVudGl0eS9zY2hlZHVsZXIgbGV2ZWwsIGJ1dCB3aGVuDQpraWxsaW5nIGpvYnMsIHdlIHJl
YWxseSB3YW50IHRvIHdhaXQgZm9yIGNvbXBsZXRpb24gbm90IGp1c3Qgc2NoZWR1bGluZy4NCg0K
djI6DQotIERvbid0IGV2aWN0IGRlcHMgaW4gZHJtX3NjaGVkX2pvYl9kZXBlbmRlbmN5KCkNCg0K
djM6DQotIEFsd2F5cyB3YWl0IGZvciBkcm1fc2NoZWRfZmVuY2U6OmZpbmlzaGVkIGZlbmNlcyBp
bg0KICBkcm1fc2NoZWRfZW50aXR5X2tpbGxfam9ic19jYigpIHdoZW4gd2Ugc2VlIGEgc2NoZWRf
ZmVuY2UNCg0KdjQ6DQotIEZpeCBjb21taXQgbWVzc2FnZQ0KLSBGaXggYSB1c2UtYWZ0ZXItZnJl
ZSBidWcNCg0KdjU6DQotIEZsYWcgZGVwcyBvbiB3aGljaCB3ZSBzaG91bGQgb25seSB3YWl0IGZv
ciB0aGUgc2NoZWR1bGVkIGV2ZW50DQogIGF0IGluc2VydGlvbiB0aW1lDQoNCnY2Og0KLSBCYWNr
IHRvIHY0IGltcGxlbWVudGF0aW9uDQotIEFkZCBDaHJpc3RpYW4ncyBSLWINCg0KQ2M6IEZyYW5r
IEJpbm5zIDxmcmFuay5iaW5uc0BpbWd0ZWMuY29tPg0KQ2M6IFNhcmFoIFdhbGtlciA8c2FyYWgu
d2Fsa2VyQGltZ3RlYy5jb20+DQpDYzogRG9uYWxkIFJvYnNvbiA8ZG9uYWxkLnJvYnNvbkBpbWd0
ZWMuY29tPg0KQ2M6IEx1YmVuIFR1aWtvdiA8bHViZW4udHVpa292QGFtZC5jb20+DQpDYzogRGF2
aWQgQWlybGllIDxhaXJsaWVkQGdtYWlsLmNvbT4NCkNjOiBEYW5pZWwgVmV0dGVyIDxkYW5pZWxA
ZmZ3bGwuY2g+DQpDYzogU3VtaXQgU2Vtd2FsIDxzdW1pdC5zZW13YWxAbGluYXJvLm9yZz4NCkNj
OiAiQ2hyaXN0aWFuIEvDtm5pZyIgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NClNpZ25lZC1v
ZmYtYnk6IEJvcmlzIEJyZXppbGxvbiA8Ym9yaXMuYnJlemlsbG9uQGNvbGxhYm9yYS5jb20+DQpT
dWdnZXN0ZWQtYnk6ICJDaHJpc3RpYW4gS8O2bmlnIiA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29t
Pg0KUmV2aWV3ZWQtYnk6ICJDaHJpc3RpYW4gS8O2bmlnIiA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQu
Y29tPg0KQWNrZWQtYnk6IEx1YmVuIFR1aWtvdiA8bHViZW4udHVpa292QGFtZC5jb20+DQpMaW5r
OiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvcGF0Y2gvbXNnaWQvMjAyMzA2MTkw
NzE5MjEuMzQ2NTk5Mi0xLWJvcmlzLmJyZXppbGxvbkBjb2xsYWJvcmEuY29tDQpTaWduZWQtb2Zm
LWJ5OiBTYXNoYSBMZXZpbiA8c2FzaGFsQGtlcm5lbC5vcmc+DQotLS0NCiBkcml2ZXJzL2dwdS9k
cm0vc2NoZWR1bGVyL3NjaGVkX2VudGl0eS5jIHwgNDEgKysrKysrKysrKysrKysrKysrKy0tLS0t
DQogMSBmaWxlIGNoYW5nZWQsIDMzIGluc2VydGlvbnMoKyksIDggZGVsZXRpb25zKC0pDQoNCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vc2NoZWR1bGVyL3NjaGVkX2VudGl0eS5jIGIvZHJp
dmVycy9ncHUvZHJtL3NjaGVkdWxlci9zY2hlZF9lbnRpdHkuYw0KaW5kZXggZTBhODg5MGE2MmUy
My4uNDIwMjFkMWY3ZTAxNiAxMDA2NDQNCi0tLSBhL2RyaXZlcnMvZ3B1L2RybS9zY2hlZHVsZXIv
c2NoZWRfZW50aXR5LmMNCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9zY2hlZHVsZXIvc2NoZWRfZW50
aXR5LmMNCkBAIC0xNTUsMTYgKzE1NSwzMiBAQCBzdGF0aWMgdm9pZCBkcm1fc2NoZWRfZW50aXR5
X2tpbGxfam9ic19jYihzdHJ1Y3QgZG1hX2ZlbmNlICpmLA0KIHsNCiAJc3RydWN0IGRybV9zY2hl
ZF9qb2IgKmpvYiA9IGNvbnRhaW5lcl9vZihjYiwgc3RydWN0IGRybV9zY2hlZF9qb2IsDQogCQkJ
CQkJIGZpbmlzaF9jYik7DQotCWludCByOw0KKwl1bnNpZ25lZCBsb25nIGluZGV4Ow0KIA0KIAlk
bWFfZmVuY2VfcHV0KGYpOw0KIA0KIAkvKiBXYWl0IGZvciBhbGwgZGVwZW5kZW5jaWVzIHRvIGF2
b2lkIGRhdGEgY29ycnVwdGlvbnMgKi8NCi0Jd2hpbGUgKCF4YV9lbXB0eSgmam9iLT5kZXBlbmRl
bmNpZXMpKSB7DQotCQlmID0geGFfZXJhc2UoJmpvYi0+ZGVwZW5kZW5jaWVzLCBqb2ItPmxhc3Rf
ZGVwZW5kZW5jeSsrKTsNCi0JCXIgPSBkbWFfZmVuY2VfYWRkX2NhbGxiYWNrKGYsICZqb2ItPmZp
bmlzaF9jYiwNCi0JCQkJCSAgIGRybV9zY2hlZF9lbnRpdHlfa2lsbF9qb2JzX2NiKTsNCi0JCWlm
ICghcikNCisJeGFfZm9yX2VhY2goJmpvYi0+ZGVwZW5kZW5jaWVzLCBpbmRleCwgZikgew0KKwkJ
c3RydWN0IGRybV9zY2hlZF9mZW5jZSAqc19mZW5jZSA9IHRvX2RybV9zY2hlZF9mZW5jZShmKTsN
CisNCisJCWlmIChzX2ZlbmNlICYmIGYgPT0gJnNfZmVuY2UtPnNjaGVkdWxlZCkgew0KKwkJCS8q
IFRoZSBkZXBlbmRlbmNpZXMgYXJyYXkgaGFkIGEgcmVmZXJlbmNlIG9uIHRoZSBzY2hlZHVsZWQN
CisJCQkgKiBmZW5jZSwgYW5kIHRoZSBmaW5pc2hlZCBmZW5jZSByZWZjb3VudCBtaWdodCBoYXZl
DQorCQkJICogZHJvcHBlZCB0byB6ZXJvLiBVc2UgZG1hX2ZlbmNlX2dldF9yY3UoKSBzbyB3ZSBn
ZXQNCisJCQkgKiBhIE5VTEwgZmVuY2UgaW4gdGhhdCBjYXNlLg0KKwkJCSAqLw0KKwkJCWYgPSBk
bWFfZmVuY2VfZ2V0X3JjdSgmc19mZW5jZS0+ZmluaXNoZWQpOw0KKw0KKwkJCS8qIE5vdyB0aGF0
IHdlIGhhdmUgYSByZWZlcmVuY2Ugb24gdGhlIGZpbmlzaGVkIGZlbmNlLA0KKwkJCSAqIHdlIGNh
biByZWxlYXNlIHRoZSByZWZlcmVuY2UgdGhlIGRlcGVuZGVuY2llcyBhcnJheQ0KKwkJCSAqIGhh
ZCBvbiB0aGUgc2NoZWR1bGVkIGZlbmNlLg0KKwkJCSAqLw0KKwkJCWRtYV9mZW5jZV9wdXQoJnNf
ZmVuY2UtPnNjaGVkdWxlZCk7DQorCQl9DQorDQorCQl4YV9lcmFzZSgmam9iLT5kZXBlbmRlbmNp
ZXMsIGluZGV4KTsNCisJCWlmIChmICYmICFkbWFfZmVuY2VfYWRkX2NhbGxiYWNrKGYsICZqb2It
PmZpbmlzaF9jYiwNCisJCQkJCQkgZHJtX3NjaGVkX2VudGl0eV9raWxsX2pvYnNfY2IpKQ0KIAkJ
CXJldHVybjsNCiANCiAJCWRtYV9mZW5jZV9wdXQoZik7DQpAQCAtMzk0LDggKzQxMCwxNyBAQCBz
dGF0aWMgc3RydWN0IGRtYV9mZW5jZSAqDQogZHJtX3NjaGVkX2pvYl9kZXBlbmRlbmN5KHN0cnVj
dCBkcm1fc2NoZWRfam9iICpqb2IsDQogCQkJIHN0cnVjdCBkcm1fc2NoZWRfZW50aXR5ICplbnRp
dHkpDQogew0KLQlpZiAoIXhhX2VtcHR5KCZqb2ItPmRlcGVuZGVuY2llcykpDQotCQlyZXR1cm4g
eGFfZXJhc2UoJmpvYi0+ZGVwZW5kZW5jaWVzLCBqb2ItPmxhc3RfZGVwZW5kZW5jeSsrKTsNCisJ
c3RydWN0IGRtYV9mZW5jZSAqZjsNCisNCisJLyogV2Uga2VlcCB0aGUgZmVuY2UgYXJvdW5kLCBz
byB3ZSBjYW4gaXRlcmF0ZSBvdmVyIGFsbCBkZXBlbmRlbmNpZXMNCisJICogaW4gZHJtX3NjaGVk
X2VudGl0eV9raWxsX2pvYnNfY2IoKSB0byBlbnN1cmUgYWxsIGRlcHMgYXJlIHNpZ25hbGVkDQor
CSAqIGJlZm9yZSBraWxsaW5nIHRoZSBqb2IuDQorCSAqLw0KKwlmID0geGFfbG9hZCgmam9iLT5k
ZXBlbmRlbmNpZXMsIGpvYi0+bGFzdF9kZXBlbmRlbmN5KTsNCisJaWYgKGYpIHsNCisJCWpvYi0+
bGFzdF9kZXBlbmRlbmN5Kys7DQorCQlyZXR1cm4gZG1hX2ZlbmNlX2dldChmKTsNCisJfQ0KIA0K
IAlpZiAoam9iLT5zY2hlZC0+b3BzLT5wcmVwYXJlX2pvYikNCiAJCXJldHVybiBqb2ItPnNjaGVk
LT5vcHMtPnByZXBhcmVfam9iKGpvYiwgZW50aXR5KTsNCi0tIA0KMi40MC4xDQoNCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFp
bGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmli
ZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
