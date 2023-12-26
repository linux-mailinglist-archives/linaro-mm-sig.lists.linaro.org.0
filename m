Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id B28B281E807
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 26 Dec 2023 16:31:07 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5822C3F3A2
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 26 Dec 2023 15:31:06 +0000 (UTC)
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
	by lists.linaro.org (Postfix) with ESMTPS id 7C25643F08
	for <linaro-mm-sig@lists.linaro.org>; Tue, 26 Dec 2023 15:30:45 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b="oZ/WFyxx";
	spf=pass (lists.linaro.org: domain of jic23@kernel.org designates 145.40.68.75 as permitted sender) smtp.mailfrom=jic23@kernel.org;
	dmarc=pass (policy=none) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id 6BA7EB80BD1;
	Tue, 26 Dec 2023 15:30:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2DB4BC433C8;
	Tue, 26 Dec 2023 15:30:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703604643;
	bh=+DXbzpdkr8gy1jHBrPxa1rews3taczzI9G1V+1FZGxA=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=oZ/WFyxxLo4THXqtr3qO8etYffapGkwoFzxmZmrJ+HO+EJ6IsSoL0RZexYf1h2Ydq
	 Izm/eezZbv6G83yFPq7Mb5SSG4xHcrjagA/CudV15eu7/hyl+qjFOIvN6+hcFzn8MG
	 pIEdHaQUuX7o0fzThtdPSc1sHsPWLcsMDMtzk242MhN8Xn7Zlwso2ZVYoJz3UjabrW
	 8zkSQXq8O4YiqEoWiXUAvN6FYwHIU7a8k7UULcXZauDwrbbX5XRxmiCyMaMktCC+sd
	 O02Ey1MXSrJo5zpbSJYB843md3ZUdx8XQ3jNW5eUKoAqi/LUTcYqdUTN6dAkV0Ms9Y
	 bmh3AIaVE76mw==
Date: Tue, 26 Dec 2023 15:30:37 +0000
From: Jonathan Cameron <jic23@kernel.org>
To: Nuno =?UTF-8?B?U8Oh?= <noname.nuno@gmail.com>
Message-ID: <20231226153037.1a2052f3@jic23-huawei>
In-Reply-To: <219abc43b4fdd4a13b307ed2efaa0e6869e68e3f.camel@gmail.com>
References: <20231219175009.65482-1-paul@crapouillou.net>
	<20231219175009.65482-7-paul@crapouillou.net>
	<20231221160445.0e3e5a8c@jic23-huawei>
	<219abc43b4fdd4a13b307ed2efaa0e6869e68e3f.camel@gmail.com>
X-Mailer: Claws Mail 4.2.0 (GTK 3.24.38; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:145.40.68.75];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:54825, ipnet:145.40.68.0/24, country:US];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 7C25643F08
X-Spamd-Bar: -
Message-ID-Hash: HHYSZEISPNEBSFUG3XCF4NQR62YR3M3M
X-Message-ID-Hash: HHYSZEISPNEBSFUG3XCF4NQR62YR3M3M
X-MailFrom: jic23@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Paul Cercueil <paul@crapouillou.net>, Lars-Peter Clausen <lars@metafoo.de>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>, Vinod Koul <vkoul@kernel.org>, Jonathan Corbet <corbet@lwn.net>, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, dmaengine@vger.kernel.org, linux-iio@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Michael Hennerich <Michael.Hennerich@analog.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 6/8] iio: buffer-dma: Enable support for DMABUFs
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/HHYSZEISPNEBSFUG3XCF4NQR62YR3M3M/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

DQo+ID4gPiArc3RydWN0IGlpb19kbWFfYnVmZmVyX2Jsb2NrICoNCj4gPiA+ICtpaW9fZG1hX2J1
ZmZlcl9hdHRhY2hfZG1hYnVmKHN0cnVjdCBpaW9fYnVmZmVyICpidWZmZXIsDQo+ID4gPiArwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHN0cnVj
dCBkbWFfYnVmX2F0dGFjaG1lbnQgKmF0dGFjaCkNCj4gPiA+ICt7DQo+ID4gPiArwqDCoMKgwqDC
oMKgwqBzdHJ1Y3QgaWlvX2RtYV9idWZmZXJfcXVldWUgKnF1ZXVlID0gaWlvX2J1ZmZlcl90b19x
dWV1ZShidWZmZXIpOw0KPiA+ID4gK8KgwqDCoMKgwqDCoMKgc3RydWN0IGlpb19kbWFfYnVmZmVy
X2Jsb2NrICpibG9jazsNCj4gPiA+ICvCoMKgwqDCoMKgwqDCoGludCBlcnI7DQo+ID4gPiArDQo+
ID4gPiArwqDCoMKgwqDCoMKgwqBtdXRleF9sb2NrKCZxdWV1ZS0+bG9jayk7ICANCj4gPiANCj4g
PiDCoMKgwqDCoMKgwqDCoMKgZ3VhcmQobXV0ZXgpKCZxdWV1ZS0+bG9jayk7ICANCj4gDQo+IEkn
bSBhbHNvIGEgYmlnIGZhbiBvZiB0aGlzIG5ldyBzdHVmZiBidXQgc2hvdWxkbid0IHdlIGhhdmUg
YSBwcmVwIHBhdGNoIG1ha2luZyB0aGUNCj4gdHJhbnNpdGlvbiB0byB0aGF0PyBPdGhlcndpc2Ug
d2UnbGwgZW5kIHVwIHdpdGggYSBtaXggb2Ygc3R5bGVzLiBJJ20gaGFwcHkgdG8gY2xlYW4NCj4g
dXAgc3R1ZmYgd2l0aCBmb2xsb3cgdXAgcGF0Y2hlcyAoZXZlbiBzb21lIGNvZGluZyBzdHlsZSBj
b3VsZCBiZSBpbXByb3ZlZCBJSVJDKSBidXQNCj4gdHlwaWNhbGx5IHRoYXQncyBub3QgaG93IHdl
IGhhbmRsZSB0aGluZ3MgbGlrZSB0aGlzIEkgYmVsaWV2ZS4uLg0KDQpJZGVhbGx5IHllcywgSSB0
aGluayBhIHByZXAgcGF0Y2ggd291bGQgbWFrZSBzZW5zZSAtIGJ1dCBJJ20gbm90IHRoYXQgZnVz
c2VkDQphYm91dCBpdCBhbmQgZm9sbG93IHVwIHBhdGNoZXMgd291bGQgYmUgZmluZSBoZXJlLiAN
Cg0KVGhlcmUgYXJlIGNhc2VzIGZvciB1c2luZyB0aGlzIHRoYXQgYXJlIG11Y2ggZWFzaWVyIHRv
IGp1c3RpZnkgdGhhbg0Kb3RoZXJzLCBzbyBJIGRvbid0IHJlYWxseSBtaW5kIGlmIHNpbXBsZQ0K
DQptdXRleF9sb2NrKCk7DQpkb19zb21ldGhpbmcNCm11dGV4X3VubG9jaygpOw0KDQpjYXNlcyBh
cmUgbGVmdCBmb3IgZXZlciBub3QgdXNpbmcgZ3VhcmQoKSwgdGhvdWdoIEkgYWxzbyBkb24ndCBt
aW5kIGlmIHBlb3BsZSB3YW50IHRvIHVzZQ0Kc2NvcGVkX2d1YXJkKCkgb3IgZ3VhcmQgZm9yIHRo
ZXNlIGp1c3QgdG8gYmUgY29uc2lzdGVudC4gIEVpdGhlciB3YXkgaXMgcHJldHR5DQplYXN5IHRv
IHJlYWQuICBXZSdsbCBwcm9iYWJseSBhbHNvIGNvbnRpbnVlIHRvIGdhaW4gbmV3IHVzZXMgb2Yg
dGhpcyBsb2dpYyBzdWNoDQphcyB0aGUgY29uZGl0aW9uYWwgZ3VhcmQgc3R1ZmYgdGhhdCBpcyBx
dWV1ZWQgdXAgZm9yIHRoZSBuZXh0IG1lcmdlIHdpbmRvdyBhbmQNCndoaWxzdCB0aGF0IGlzIGdv
aW5nIG9uIHdlIGFyZSBnb2luZyB0byBoYXZlIGEgYml0IG9mIG1peGVkIHN0eWxlLg0KDQpKb25h
dGhhbg0KDQoNCj4gDQo+IC0gTnVubyBTw6ENCj4gPiAgIA0KPiANCg0KX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxp
c3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQg
YW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
