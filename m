Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C30CA911D4F
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 21 Jun 2024 09:51:33 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 76FFB4416B
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 21 Jun 2024 07:51:32 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id 4B5BB40D67
	for <linaro-mm-sig@lists.linaro.org>; Fri, 21 Jun 2024 07:51:30 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=c1hdrIkF;
	spf=pass (lists.linaro.org: domain of lee@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=lee@kernel.org;
	dmarc=pass (policy=none) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id C2BFB6248D;
	Fri, 21 Jun 2024 07:51:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CDC14C2BBFC;
	Fri, 21 Jun 2024 07:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718956289;
	bh=1HCwf6TJ72c4wbSMsx0ToW1GLnhJDNJ8Afp1KOu+icw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=c1hdrIkFymyDz2jm9julINVwJdVh0apoGK/wOJgAfzgQciUyMpXO11gJeobnhyj/O
	 HN7aNcc5+7PxztjUyqA062UCdYMiPoQvViog8Xrv0y9bIxvqxsagAzJMmuVrgQIUup
	 I/cVid0PV0daHpnlqjFuqXeIQ2YCGm/gHAcyVU/o1rfRtE7Ii0RAwhucR+x/mYN8TM
	 XMF4h1coHHcuTt0dpExaF0Yl8kWq7sY0nbsfmm++caCX3/fl21wh20/1GCKj4vllQa
	 xuvf8a9Q3PYkXssVcn5yqcT7rOChpgLgCUWb09KCofzKUmVkGhexjOXcqgDrZIGyxv
	 1zwNw8HQda1fg==
Date: Fri, 21 Jun 2024 08:51:23 +0100
From: Lee Jones <lee@kernel.org>
To: Markus Elfring <Markus.Elfring@web.de>
Message-ID: <20240621075123.GG1318296@google.com>
References: <202406191014.9JAzwRV6-lkp@intel.com>
 <c25aab0d-48f6-4754-b514-d6caf8d51fd1@web.de>
 <ZnRUSaHJhz7XLcKa@matsya>
 <20240620170522.GU3029315@google.com>
 <ZnUnFeum1Z2ahm9M@matsya>
 <ebddd644-b9b1-4a87-a2e7-dcf255f4184d@web.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ebddd644-b9b1-4a87-a2e7-dcf255f4184d@web.de>
X-Rspamd-Queue-Id: 4B5BB40D67
X-Spamd-Bar: -
X-Spamd-Result: default: False [-1.04 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:139.178.84.217:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	BAYES_HAM(-0.04)[58.52%];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:54825, ipnet:139.178.80.0/21, country:US];
	ARC_NA(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FREEMAIL_TO(0.00)[web.de];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_HAS_DN(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: Y3RVVAMZBLBE67JMFVW2ASHBADIRDQ2B
X-Message-ID-Hash: Y3RVVAMZBLBE67JMFVW2ASHBADIRDQ2B
X-MailFrom: lee@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Vinod Koul <vkoul@kernel.org>, lkp@intel.com, linux-iio@vger.kernel.org, dmaengine@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Paul Cercueil <paul@crapouillou.net>, Nuno =?iso-8859-1?Q?S=E1?= <nuno.sa@analog.com>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Jonathan Cameron <jic23@kernel.org>, Lars-Peter Clausen <lars@metafoo.de>, Sumit Semwal <sumit.semwal@linaro.org>, oe-kbuild-all@lists.linux.dev, LKML <linux-kernel@vger.kernel.org>, linux-doc@vger.kernel.org, Jonathan Corbet <corbet@lwn.net>, Julia Lawall <julia.lawall@inria.fr>, Randy Dunlap <rdunlap@infradead.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [v11 3/7] iio: core: Add new DMABUF interface infrastructure
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/Y3RVVAMZBLBE67JMFVW2ASHBADIRDQ2B/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gRnJpLCAyMSBKdW4gMjAyNCwgTWFya3VzIEVsZnJpbmcgd3JvdGU6DQoNCj4gPiBTYWRseSwg
SSBhbSB5ZXQgdG8gc2VlIGEgY29uc3RydWN0aXZlIGFwcHJvYWNoIG9yIGV2ZW4gYmV0dGVyIGEg
aGVscGZ1bA0KPiA+IHBhdGNoIHdoaWNoIGltcHJvdmUgc29tZXRoaW5nLCByYXRoZXIgdGhhbiB2
YWd1ZSBzdWdnZXN0aW9ucyBvbiB0aGUgbGlzdA0KPiANCj4gQ2FuIHlvdSBnZXQgYW55IG1vcmUg
Y29uc3RydWN0aXZlIGltcHJlc3Npb25zIGZyb20gYW5vdGhlciBkYXRhIHJlcHJlc2VudGF0aW9u
Pw0KPiBodHRwczovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC90b3J2
YWxkcy9saW51eC5naXQvbG9nLz9xdD1hdXRob3ImcT1FbGZyaW5nDQo+IA0KPiBBcmUgeW91IGF3
YXJlIGhvdyBtYW55IGNoYW5nZSBzdWdnZXN0aW9ucyAoYWxzbyBmcm9tIG15IHNlbGVjdGlvbikg
YXJlIHN0aWxsDQo+IGluIHZhcmlvdXMgd2FpdGluZyBxdWV1ZXM/DQoNCk5vIG9uZSBpcyBkb3Vi
dGluZyB5b3VyIG92ZXJhbGwgY29udHJpYnV0aW9ucyBNYXJrdXMuDQoNClRoZSBpc3N1ZSBpcyBv
bmUgb2YgY29tbXVuaWNhdGlvbiBhbmQgdGhlIHdheSByZXZpZXdzIGFyZSBjb25kdWN0ZWQuDQoN
ClJldmlld2luZyBvdGhlciBwZW9wbGUncyB3b3JrIGlzIGNoYWxsZW5naW5nIGFuZCByZXF1aXJl
cyBhIGNlcnRhaW4NCnNraWxsLXNldCwgb2Ygd2hpY2ggX2V4Y2VsbGVudF8gY29tbXVuaWNhdGlv
biBza2lsbHMgYXJlIG5vbi1uZWdvdGlhYmxlLg0KDQpXaHkgbm90IGNvbmNlbnRyYXRlIG9uIG1v
cmUgY29tcGxleCBzdWJtaXNzaW9ucyBmb3IgYSB3aGlsZSBhbmQgZ3Jvdw0KeW91ciByZXBlcnRv
aXJlIG9mIGNvbW1vbiByZXZpZXcgcG9pbnRzLCByYXRoZXIgdGhhbiByZXBlYXRpbmcgdGhlIHNh
bWUNCmZldyBvdmVyIGFuZCBvdmVyPyAgUmVhZGluZyBvdGhlciwgbW9yZSBleHBlcmllbmNlZCBt
YWludGFpbmVyJ3MgcmV2aWV3cw0Kd291bGQgYWxzbyBiZSBhIGdvb2QgdXNlIG9mIHlvdXIgdGlt
ZS4NCg0KLS0gDQpMZWUgSm9uZXMgW+adjueQvOaWr10NCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxp
bmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWls
IHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
