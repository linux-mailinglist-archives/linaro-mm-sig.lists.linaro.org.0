Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 050BF8D1892
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 28 May 2024 12:27:11 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AC52344854
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 28 May 2024 10:27:09 +0000 (UTC)
Received: from madrid.collaboradmins.com (madrid.collaboradmins.com [46.235.227.194])
	by lists.linaro.org (Postfix) with ESMTPS id 48B0043FA1
	for <linaro-mm-sig@lists.linaro.org>; Tue, 28 May 2024 10:26:59 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=collabora.com header.s=mail header.b=qo0ABDpD;
	spf=pass (lists.linaro.org: domain of angelogioacchino.delregno@collabora.com designates 46.235.227.194 as permitted sender) smtp.mailfrom=angelogioacchino.delregno@collabora.com;
	dmarc=pass (policy=quarantine) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1716892018;
	bh=ShbB0egsqc+viF42q6rsRBuCb+8DgZ4kwsWT9hgU0u8=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=qo0ABDpDeGyeb5AM6CvxMAHNti9En+O5JJ7JH2bf5Kz7yu4heP+HUSyNzNLBu9l4v
	 r6G+r6Xjl5Q34vGGu+TXIib93qalmPg7v5r7lyS330vgVmLB7adu2KP8H+lX7rrfIu
	 zJzxuXF37jfduvnRfRK/e8nQU1J25bdFgPMWSPOB7M3qUfMJFNBYvZoUeVe2eDL7OI
	 IhiyY4tRqs1ePuvCQhmrTEcAjzVzMjtN3LeaZzlImY/eHCHvRfjLs4jdpNhm0HiC1L
	 MeJYVO6vs3cdX8W6jVn4un+D6X7h+XF5EW/FG6J2SfjzNJDaYpsv4bglD9wNkfq/7P
	 tdkzEA4zshBBg==
Received: from [100.113.186.2] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id D4030378215E;
	Tue, 28 May 2024 10:26:56 +0000 (UTC)
Message-ID: <430cf0a6-4d8c-4819-8a95-d436eb044eec@collabora.com>
Date: Tue, 28 May 2024 12:26:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: =?UTF-8?B?SmFzb24tSkggTGluICjmnpfnnb/npaUp?= <Jason-JH.Lin@mediatek.com>,
 "jassisinghbrar@gmail.com" <jassisinghbrar@gmail.com>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 "chunkuang.hu@kernel.org" <chunkuang.hu@kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>,
 "conor+dt@kernel.org" <conor+dt@kernel.org>
References: <20240124011459.12204-1-jason-jh.lin@mediatek.com>
 <20240124011459.12204-2-jason-jh.lin@mediatek.com>
 <f91d3ac1-0a7d-4ca2-bf0f-c5e471c2f6bb@collabora.com>
 <2a2a939c9cb56de0383ec3e42db9bcf8e8518775.camel@mediatek.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <2a2a939c9cb56de0383ec3e42db9bcf8e8518775.camel@mediatek.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 48B0043FA1
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.33 / 15.00];
	BAYES_HAM(-2.94)[99.73%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:46.235.227.194];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	ONCE_RECEIVED(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	XM_UA_NO_VERSION(0.01)[];
	FREEMAIL_TO(0.00)[mediatek.com,gmail.com,kernel.org,linaro.org];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	URIBL_BLOCKED(0.00)[mediatek.com:email,madrid.collaboradmins.com:helo,madrid.collaboradmins.com:rdns,microchip.com:email,collabora.com:dkim,collabora.com:email];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:+];
	RCPT_COUNT_TWELVE(0.00)[21];
	NEURAL_HAM(-0.00)[-1.000];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_TLS_ALL(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[dt];
	RCVD_COUNT_ONE(0.00)[1];
	ASN(0.00)[asn:44684, ipnet:46.235.224.0/21, country:GB];
	TO_DN_SOME(0.00)[]
Message-ID-Hash: VAIH53HMOR2GZBNJDZTTCHQA5FZNJD3S
X-Message-ID-Hash: VAIH53HMOR2GZBNJDZTTCHQA5FZNJD3S
X-MailFrom: angelogioacchino.delregno@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>, =?UTF-8?B?U2luZ28gQ2hhbmcgKOW8teiIiOWciyk=?= <Singo.Chang@mediatek.com>, =?UTF-8?B?Sm9obnNvbiBXYW5nICjnjovogZbpkasp?= <Johnson.Wang@mediatek.com>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, =?UTF-8?B?SmFzb24tY2ggQ2hlbiAo6Zmz5bu66LGqKQ==?= <Jason-ch.Chen@mediatek.com>, =?UTF-8?B?U2hhd24gU3VuZyAo5a6L5a2d6KyZKQ==?= <Shawn.Sung@mediatek.com>, =?UTF-8?B?TmFuY3kgTGluICjmnpfmrKPonqIp?= <Nancy.Lin@mediatek.com>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, Project_Global_Chrome_Upstream_Group <Project_Global_Chrome_Upstream_Group@mediatek.com>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, "fshao@chromium.org" <fshao@chromium.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 1/3] dt-bindings: mailbox: Add mediatek,gce-props.yaml
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/VAIH53HMOR2GZBNJDZTTCHQA5FZNJD3S/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SWwgMjYvMDUvMjQgMTc6MDQsIEphc29uLUpIIExpbiAo5p6X552/56WlKSBoYSBzY3JpdHRvOg0K
PiBIaSBBbmdlbG8sIEphc3NpLA0KPiANCj4gQ291bGQgeW91IGhlbHAgbWUgYXBwbHkgdGhpcyBz
ZXJpZXM/DQo+IFRoYW5rcyENCj4gDQoNClRoYXQncyBub3QgbWUsIGl0J3MgSmFzc2kgLSBncmVl
biBsaWdodCBmcm9tIG1lLCBidHcuDQoNCkNoZWVycywNCkFuZ2Vsbw0KDQo+IFJlZ2FyZHMsDQo+
IEphc29uLUpILkxpbg0KPiANCj4gT24gV2VkLCAyMDI0LTAxLTI0IGF0IDA5OjU3ICswMTAwLCBB
bmdlbG9HaW9hY2NoaW5vIERlbCBSZWdubyB3cm90ZToNCj4+IElsIDI0LzAxLzI0IDAyOjE0LCBK
YXNvbi1KSC5MaW4gaGEgc2NyaXR0bzoNCj4+PiBBZGQgbWVkaWF0ZWssZ2NlLXByb3BzLnlhbWwg
Zm9yIGNvbW1vbiBHQ0UgcHJvcGVydGllcyB0aGF0IGlzIHVzZWQNCj4+PiBmb3INCj4+PiBib3Ro
IG1haWxib3ggcHJvdmlkZXJzIGFuZCBjb25zdW1lcnMuIFdlIHBsYWNlIHRoZSBjb21tb24gcHJv
cGVydHkNCj4+PiAibWVkaWF0ZWssZ2NlLWV2ZW50cyIgaW4gdGhpcyBiaW5kaW5nIGN1cnJlbnRs
eS4NCj4+Pg0KPj4+IFRoZSBwcm9wZXJ0eSAibWVkaWF0ZWssZ2NlLWV2ZW50cyIgaXMgdXNlZCBm
b3IgR0NFIGV2ZW50IElEDQo+Pj4gY29ycmVzcG9uZGluZw0KPj4+IHRvIGEgaGFyZHdhcmUgZXZl
bnQgc2lnbmFsIHNlbnQgYnkgdGhlIGhhcmR3YXJlIG9yIGEgc29mdHdhcmUNCj4+PiBkcml2ZXIu
DQo+Pj4gSWYgdGhlIG1haWxib3ggcHJvdmlkZXJzIG9yIGNvbnN1bWVycyB3YW50IHRvIG1hbmlw
dWxhdGUgdGhlIHZhbHVlDQo+Pj4gb2YNCj4+PiB0aGUgZXZlbnQgSUQsIHRoZXkgbmVlZCB0byBr
bm93IHRoZSBzcGVjaWZpYyBldmVudCBJRC4NCj4+Pg0KPj4+IFNpZ25lZC1vZmYtYnk6IEphc29u
LUpILkxpbiA8amFzb24tamgubGluQG1lZGlhdGVrLmNvbT4NCj4+PiBSZXZpZXdlZC1ieTogQ29u
b3IgRG9vbGV5IDxjb25vci5kb29sZXlAbWljcm9jaGlwLmNvbT4NCj4+DQo+PiBSZXZpZXdlZC1i
eTogQW5nZWxvR2lvYWNjaGlubyBEZWwgUmVnbm8gPA0KPj4gYW5nZWxvZ2lvYWNjaGluby5kZWxy
ZWdub0Bjb2xsYWJvcmEuY29tPg0KPj4NCj4gDQoNCg0KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGlu
YXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwg
dG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
