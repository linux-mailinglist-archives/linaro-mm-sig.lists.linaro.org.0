Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 51FEA911E76
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 21 Jun 2024 10:21:25 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4E4774478B
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 21 Jun 2024 08:21:24 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id 1FEBE3EF2D
	for <linaro-mm-sig@lists.linaro.org>; Fri, 21 Jun 2024 08:21:21 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=VZFGUieu;
	spf=pass (lists.linaro.org: domain of lee@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=lee@kernel.org;
	dmarc=pass (policy=none) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id BA7C6623B1;
	Fri, 21 Jun 2024 08:21:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A9536C4AF08;
	Fri, 21 Jun 2024 08:21:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718958080;
	bh=QMtf0T6uDNCP6ThgxIUGFi47LfMO2/ulDirJ4mXjisY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=VZFGUieuixjnwWRarKrkMmWzTsHwOPQHkDnxJwsAOSI5Jhnj99ryVH33FrLocz8Vn
	 ajhhezpNAxlr4qrsLKoW8egu3wGklMisIPIGR7fvy4gfhGh2kxFSubfki8EmLTGeqC
	 FyNF6c+n9pHbcHgwI9omP7yG8Dbu5r7NL+bHQnZpXGWmAiNXQIhI61MO4uI4v+LAfB
	 xgTleMqki5tjcafqHOsHci8B6Shewb4T8SEsWCMvgeQoX2/IGg/+pD/hxyZbRFdj/5
	 60fqXFWW8FllRMXbMhWzg2/S3kF8EDze2ZQgoDbnj5FdlGcCcVmJHaUnZsK3Nklji7
	 ujcmBQOVYa8Nw==
Date: Fri, 21 Jun 2024 09:21:14 +0100
From: Lee Jones <lee@kernel.org>
To: Markus Elfring <Markus.Elfring@web.de>
Message-ID: <20240621082114.GH1318296@google.com>
References: <202406191014.9JAzwRV6-lkp@intel.com>
 <c25aab0d-48f6-4754-b514-d6caf8d51fd1@web.de>
 <ZnRUSaHJhz7XLcKa@matsya>
 <20240620170522.GU3029315@google.com>
 <ZnUnFeum1Z2ahm9M@matsya>
 <ebddd644-b9b1-4a87-a2e7-dcf255f4184d@web.de>
 <20240621075123.GG1318296@google.com>
 <302ce128-a0ef-41b4-9808-210a83bc6a48@web.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <302ce128-a0ef-41b4-9808-210a83bc6a48@web.de>
X-Rspamd-Queue-Id: 1FEBE3EF2D
X-Spamd-Bar: -
X-Spamd-Result: default: False [-1.00 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:139.178.84.217];
	MIME_GOOD(-0.10)[text/plain];
	MISSING_XM_UA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[20];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:54825, ipnet:139.178.80.0/21, country:US];
	FREEMAIL_TO(0.00)[web.de];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: YEYRFGYMSJKMVGXHYK3FVW6KAKPMAJSF
X-Message-ID-Hash: YEYRFGYMSJKMVGXHYK3FVW6KAKPMAJSF
X-MailFrom: lee@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: lkp@intel.com, linux-iio@vger.kernel.org, dmaengine@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Vinod Koul <vkoul@kernel.org>, Paul Cercueil <paul@crapouillou.net>, Nuno =?iso-8859-1?Q?S=E1?= <nuno.sa@analog.com>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Jonathan Cameron <jic23@kernel.org>, Lars-Peter Clausen <lars@metafoo.de>, Sumit Semwal <sumit.semwal@linaro.org>, oe-kbuild-all@lists.linux.dev, LKML <linux-kernel@vger.kernel.org>, linux-doc@vger.kernel.org, Jonathan Corbet <corbet@lwn.net>, Julia Lawall <julia.lawall@inria.fr>, Randy Dunlap <rdunlap@infradead.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC] Patch review challenges
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/YEYRFGYMSJKMVGXHYK3FVW6KAKPMAJSF/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gRnJpLCAyMSBKdW4gMjAyNCwgTWFya3VzIEVsZnJpbmcgd3JvdGU6DQoNCj4gPiBUaGUgaXNz
dWUgaXMgb25lIG9mIGNvbW11bmljYXRpb24gYW5kIHRoZSB3YXkgcmV2aWV3cyBhcmUgY29uZHVj
dGVkLg0KPiA+DQo+ID4gUmV2aWV3aW5nIG90aGVyIHBlb3BsZSdzIHdvcmsgaXMgY2hhbGxlbmdp
bmcgYW5kIHJlcXVpcmVzIGEgY2VydGFpbg0KPiA+IHNraWxsLXNldCwgb2Ygd2hpY2ggX2V4Y2Vs
bGVudF8gY29tbXVuaWNhdGlvbiBza2lsbHMgYXJlIG5vbi1uZWdvdGlhYmxlLg0KPiANCj4gUGF0
Y2ggZmVlZGJhY2sgYW5kIGNoYW5nZSB0b2xlcmFuY2UgY2FuIHZhcnkgYWxzbyBhY2NvcmRpbmcg
dG8gaW52b2x2ZWQgY29tbXVuaXRpZXMuDQoNCkFncmVlZC4NCg0KRm9yIHRoaXMgY29tbXVuaXR5
LCBJIHN1Z2dlc3QgeW91IGJ1aWxkIHlvdXIgc2tpbGxzIGZvciBhIHdoaWxlIGxvbmdlci4NCg0K
PiA+IFdoeSBub3QgY29uY2VudHJhdGUgb24gbW9yZSBjb21wbGV4IHN1Ym1pc3Npb25zIGZvciBh
IHdoaWxlIGFuZCBncm93DQo+ID4geW91ciByZXBlcnRvaXJlIG9mIGNvbW1vbiByZXZpZXcgcG9p
bnRzLA0KPiANCj4gRnVydGhlciBjb2xsYXRlcmFsIGV2b2x1dGlvbiBjYW4gYmUgY29uc2lkZXJl
ZCB0aGVyZSBkZXBlbmRpbmcgb24NCj4gY29ycmVzcG9uZGluZyBkZXZlbG9wbWVudCByZXNvdXJj
ZXMuDQo+IA0KPiA+IHJhdGhlciB0aGFuIHJlcGVhdGluZyB0aGUgc2FtZSBmZXcgb3ZlciBhbmQg
b3Zlcj8NCj4gDQo+IFNvbWUgZmFjdG9ycyBhcmUgcHJvYmFibHkga25vd24gYWxzbyBhY2NvcmRp
bmcgdG8gY29ycmVzcG9uZGluZyBzdGF0aXN0aWNzLg0KPiBTZXZlcmFsIGNvbnRyaWJ1dG9ycyBh
cmUgc3R1bWJsaW5nIG9uIHJlY3VycmluZyBpbXByb3ZlbWVudCBwb3NzaWJpbGl0aWVzDQo+IGlu
IHB1Ymxpc2hlZCBpbmZvcm1hdGlvbi4NCg0KUmlnaHQsIHRoaXMgd2lsbCBhbHdheXMgYmUgdHJ1
ZSwgaG93ZXZlciB0aGUgZmV3IHlvdSd2ZSBwaWNrZWQgdXAgb24NCmFyZSBub3QgaW1wb3J0YW50
IGVub3VnaCB0byBrZWVwIHJlaXRlcmF0aW5nLiAgQnkgZG9pbmcgc28sIHlvdSdyZQ0KcmVjZWl2
aW5nIHVuZGVzaXJhYmxlIGF0dGVudGlvbi4NCg0KPiA+IFJlYWRpbmcgb3RoZXIsIG1vcmUgZXhw
ZXJpZW5jZWQgbWFpbnRhaW5lcidzIHJldmlld3Mgd291bGQgYWxzbyBiZSBhIGdvb2QgdXNlDQo+
ID4gb2YgeW91ciB0aW1lLg0KPiANCj4gSSBhbSB0cnlpbmcgdG8gaW5mbHVlbmNlIGFkanVzdG1l
bnRzIGluIGRlc2lyYWJsZSBkaXJlY3Rpb25zIGZvciBhIHdoaWxlLg0KDQpOZXZlciBzdG9wIHRy
eWluZyB0byBpbXByb3ZlLg0KDQoNClRoZXNlIGFyZSBvbmx5IG15IG9waW5pb25zIG9mIGNvdXJz
ZS4gIFRha2UgdGhlIGFkdmljZSBvciBsZWF2ZSBpdC4NCg0KVGhlcmUncyBubyBuZWVkIHRvIHJl
cGx5IHRvIHRoaXMuDQoNCi0tIA0KTGVlIEpvbmVzIFvmnY7nkLzmlq9dDQpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcg
bGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2Vu
ZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
