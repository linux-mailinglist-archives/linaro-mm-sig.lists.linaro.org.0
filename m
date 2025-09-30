Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id A2AF4BABAEB
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 30 Sep 2025 08:40:59 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 67BBB45748
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 30 Sep 2025 06:40:58 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id 2A4F244756
	for <linaro-mm-sig@lists.linaro.org>; Tue, 30 Sep 2025 06:40:55 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=DKgSCAt1;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (lists.linaro.org: domain of krzk@kernel.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=krzk@kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id A1DF3603CE
	for <linaro-mm-sig@lists.linaro.org>; Tue, 30 Sep 2025 06:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 562DEC113D0
	for <linaro-mm-sig@lists.linaro.org>; Tue, 30 Sep 2025 06:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759214454;
	bh=aY796e7ZjDJ3GpkqwDAOoDMWoCinINh6cbC/Z6IAkio=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=DKgSCAt1CIUjTAPD85phyC6/D/engFWoLogA9Yz5lqVjDmSESvd0ZOchbg0bW326x
	 SW3YgAa4BKIk40LZ6tlKLlg0+2AmH9iEDSDkRkpUyTmOL/yMRy6+l1DvFG4sNq92g5
	 sy/a90b1stw+87lspEOgUef61/I56Yjy0Gx9rS9WSeSmXvC14Dd7DfSTvudUdeHmvs
	 hyf2tiiH4u7VKMaBdzQnBPsrh+0ulbD0H5T3ez6ZO2r1S0BXDt/Ie+UoPYrB2Y77Zw
	 nJdGsBiHyj7wChYx6E02wVyxskB4mWT6pVJP8RRkE4qkvJfPssQ/OibpAGmtBcuzZ0
	 my/RmbK0cZuXA==
Received: by mail-pg1-f180.google.com with SMTP id 41be03b00d2f7-b57f08e88bcso3169221a12.0
        for <linaro-mm-sig@lists.linaro.org>; Mon, 29 Sep 2025 23:40:54 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVfV7orzxPLyeOpemvrnaTvZ21zwuYq7sTJ5fqLXXzcxUdEogRAyHykHDrtuZKVUWVDkSLkRpeW9XoepA2g@lists.linaro.org
X-Gm-Message-State: AOJu0YybhYK6PJSbUXROphJ6xPzIqw8PesFaN/akyfOTu4vam5nO4ZIH
	i+HRPTkxP6XzhQ59TrE+GA2esiHwbsFR+O27L51dTR0l75zCWudh1m+8L/9Ex7d0N15CbNKzLcL
	lTlFmydpk7N8GrZ3Moj0SLiRr+qwflY0=
X-Google-Smtp-Source: AGHT+IFilulwB7yZKk8NWBisCkRd9EVIUP8wmRYd1pqL/aVk/i4cqOXK4Ip+OXNthJdD/mk9ed9ZzEkUxbiiEQK8Lsg=
X-Received: by 2002:a17:902:f68d:b0:276:842a:f9a7 with SMTP id
 d9443c01a7336-27ed4a5aab7mr219005735ad.57.1759214453755; Mon, 29 Sep 2025
 23:40:53 -0700 (PDT)
MIME-Version: 1.0
References: <CGME20250930035525epcas5p3a1238a3a7bc6e52113838397187e36ba@epcas5p3.samsung.com>
 <20250930040348.3702923-1-h.dewangan@samsung.com> <20250930040348.3702923-3-h.dewangan@samsung.com>
In-Reply-To: <20250930040348.3702923-3-h.dewangan@samsung.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Tue, 30 Sep 2025 15:40:41 +0900
X-Gmail-Original-Message-ID: <CAJKOXPc+ass6ftbxrodVzXVPFW+8rUYW=VyxsmGTU1wR_jBiAg@mail.gmail.com>
X-Gm-Features: AS18NWBGk7OJKwPJ5iy8_Rm-Qzpd87k2vQsijdmZj27-buhGtUmwdQhJcd2WDg0
Message-ID: <CAJKOXPc+ass6ftbxrodVzXVPFW+8rUYW=VyxsmGTU1wR_jBiAg@mail.gmail.com>
To: Himanshu Dewangan <h.dewangan@samsung.com>
X-Rspamd-Queue-Id: 2A4F244756
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.4.254];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	TAGGED_RCPT(0.00)[dt];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	DWL_DNSWL_BLOCKED(0.00)[kernel.org:dkim];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DNSWL_BLOCKED(0.00)[172.105.4.254:from];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: DI4V6MLGFJYYOR6YOPPMAX63GKIDUZET
X-Message-ID-Hash: DI4V6MLGFJYYOR6YOPPMAX63GKIDUZET
X-MailFrom: krzk@kernel.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: mchehab@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, sumit.semwal@linaro.org, christian.koenig@amd.com, alim.akhtar@samsung.com, manjun@samsung.com, nagaraju.s@samsung.com, ih0206.lee@samsung.com, jehyung.lee@samsung.com, linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org, devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 02/29] arm64: dts: mfc: Add MFC device tree for Auto V920 SoC
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/DI4V6MLGFJYYOR6YOPPMAX63GKIDUZET/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVHVlLCAzMCBTZXB0IDIwMjUgYXQgMTI6NTUsIEhpbWFuc2h1IERld2FuZ2FuIDxoLmRld2Fu
Z2FuQHNhbXN1bmcuY29tPiB3cm90ZToNCj4NCj4gRnJvbTogTmFnYXJhanUgU2lkZGluZW5pIDxu
YWdhcmFqdS5zQHNhbXN1bmcuY29tPg0KPg0KPiBJbnRyb2R1Y2UgdGhlIGRldmljZeKAkXRyZWUg
ZW50cmllcyBmb3IgdGhlIFNhbXN1bmcgRXh5bm9zIEFVVE8gVjkyMA0KPiBtdWx0aW1lZGlh4oCR
ZnVuY3Rpb24gY29udHJvbGxlciAoTUZDKS4gVGhlIHBhdGNoIGRlZmluZXM6DQo+IC0gUmVzZXJ2
ZWQgbWVtb3J5IHJlZ2lvbnMgZm9yIGZpcm13YXJlIGFuZCBDTUEgYnVmZmVycy4NCj4gLSBDb3Jl
MCBhbmQgQ29yZTEgbWVtb3J5IG1hcHBpbmdzLg0KPiAtIFRoZSBtYWluIE1GQyBub2RlIHdpdGgg
YmFzaWMgcHJvcGVydGllcyAoY29tcGF0aWJsZSwgcmVnLCBpbnRlcnJ1cHRzLA0KPiAgIGNsb2Nr
cywgRE1BIHdpbmRvdywgZmlybXdhcmUgbmFtZSwgZGVidWcgbW9kZSwgZXRjLikuDQo+IC0gUGVy
4oCRY29yZSBzdWLigJFub2RlcyAoTUZD4oCRMCBhbmQgTUZD4oCRMSkgd2l0aCB0aGVpciBvd24g
c3lzbW11LA0KPiAgIGZpcm13YXJlIHJlZ2lvbiwgYW5kIGNvbmZpZ3VyYXRpb24gcGFyYW1ldGVy
cy4NCj4gLSBSZXNvdXJjZSB0YWJsZSBsaXN0aW5nIHN1cHBvcnRlZCBjb2RlY3MgYW5kIHRoZWly
IGNhcGFiaWxpdGllcy4NCj4NCj4gQWRkcyBmdWxsIHN1cHBvcnQgZm9yIHRoZSBWOTIwIE1GQyBo
YXJkd2FyZSB0byB0aGUgbWFpbmxpbmUga2VybmVsDQo+IGRldmljZeKAkXRyZWUsIGVuYWJsaW5n
IHByb3BlciBtZW1vcnkgYWxsb2NhdGlvbiwgaW50ZXJydXB0IGhhbmRsaW5nIGFuZA0KPiBjb2Rl
YyBvcGVyYXRpb24gb24gdGhpcyBwbGF0Zm9ybS4NCj4NCj4gU2lnbmVkLW9mZi1ieTogTmFnYXJh
anUgU2lkZGluZW5pIDxuYWdhcmFqdS5zQHNhbXN1bmcuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBI
aW1hbnNodSBEZXdhbmdhbiA8aC5kZXdhbmdhbkBzYW1zdW5nLmNvbT4NCj4gLS0tDQo+ICAuLi4v
ZHRzL2V4eW5vcy9leHlub3NhdXRvdjkyMC1ldnQyLW1mYy5kdHNpICAgfCAxODcgKysrKysrKysr
KysrKysrKysrDQoNCk5vLCB0aGVyZSBhcmUgbm8gc3VjaCBmaWxlcy4gRG9uJ3QgcHVzaCB5b3Vy
IGRvd25zdHJlYW0gaGVyZS4NCg0KPiAgLi4uL2FybTY0L2Jvb3QvZHRzL2V4eW5vcy9leHlub3Nh
dXRvdjkyMC5kdHNpIHwgICAxICsNCj4gIDIgZmlsZXMgY2hhbmdlZCwgMTg4IGluc2VydGlvbnMo
KykNCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBhcmNoL2FybTY0L2Jvb3QvZHRzL2V4eW5vcy9leHlu
b3NhdXRvdjkyMC1ldnQyLW1mYy5kdHNpDQo+DQoNClRoaXMgZG9lc24ndCBiZWxvbmcgdG8gbWVk
aWEgcGF0Y2hzZXQsIGRvbid0IGNvbWJpbmUgdGhlbS4NCg0KQW55d2F5LCB5b3UgY29tcGxldGVs
eSBkaXNyZWdhcmRlZCBEVFMgY29kaW5nIHN0eWxlIGFuZCBob3cgd2Ugd2VyZQ0KU2Ftc3VuZyBE
VFMuIFBsZWFzZSBkb24ndCBzZW5kIHVzIGRvd25zdHJlYW0gY29kZS4NCg0KSSB3b24ndCBiZSBy
ZXZpZXdpbmcgdGhpcywgeW91IG5lZWQgdG8gc3RhcnQgZnJvbSBzY3JhdGNoIGxvb21pbmcgYXQN
Cm90aGVyIHJlY2VudCBjb2RlLg0KDQpSZW1lbWJlciBhbHNvIGFib3V0IFNhbXN1bmcgbWFpbnRh
aW5lciBwcm9maWxlLCBhbHRob3VnaCB3aXRoIHN1Y2gNCmNvbXBsZXRlbHkgYnJva2VuIGFuZCBu
b24gd29ya2luZyBiaW5kaW5ncyBpdCdzIHBvaW50bGVzcyBub3cgLSB0aGlzDQpjb2RlIGNvdWxk
bid0IGV2ZW4gYmUgcmVsaWFibHkgdGVzdGVkIHdpdGggdGhlbS4NCg0KDQpCZXN0IHJlZ2FyZHMs
DQpLcnp5c3p0b2YNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGlu
YXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVh
dmVAbGlzdHMubGluYXJvLm9yZwo=
