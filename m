Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id A0F3579CBE3
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 Sep 2023 11:32:33 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A51393EFE1
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 Sep 2023 09:32:32 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lists.linaro.org (Postfix) with ESMTPS id 861E93EF28
	for <linaro-mm-sig@lists.linaro.org>; Tue, 12 Sep 2023 09:32:27 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=collabora.com header.s=mail header.b=leOPTMb+;
	spf=pass (lists.linaro.org: domain of angelogioacchino.delregno@collabora.com designates 46.235.227.172 as permitted sender) smtp.mailfrom=angelogioacchino.delregno@collabora.com;
	dmarc=pass (policy=quarantine) header.from=collabora.com
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id B76C566072F2;
	Tue, 12 Sep 2023 10:32:25 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1694511146;
	bh=nboqvOkj/fOk7wG5yLQU5h6H3bj8HNMHs3m8cZuPp8g=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=leOPTMb+UgyVQ7uNRBIbc4bummxwqu0liVI46DPr3hA0ZMaSkS1CjLtz/mqVft49Z
	 xFjyoG767NLmgk7EBBdlhCvsO3Te6WxU7aeBJuYEPJfvmXBPzhVmf0BzY9sGPYGJxL
	 5RJTGwtBTYBNd98Ovs9eDiZRp5+fdCSF3shUiUH3eRJC+DAQDfbV0qnzMeWvlAlD54
	 1M/ycX4PoO5ZP+QtowvQgTv5u2NktAquPZCBeJDafxev3n8eNkbQuSci0wkphL+en4
	 lo9PKMFdN0ZAuIQs+tFZnn3yahQ/wGOOoIblTuDuIQTkM4pWBpJBtG8Bi4FwWsRYRB
	 NnAZEo8JCQtcQ==
Message-ID: <d798b15b-6f35-96db-e3f7-5c0bcc5d46a2@collabora.com>
Date: Tue, 12 Sep 2023 11:32:23 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Content-Language: en-US
To: =?UTF-8?B?WW9uZyBXdSAo5ZC05YuHKQ==?= <Yong.Wu@mediatek.com>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 "christian.koenig@amd.com" <christian.koenig@amd.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "sumit.semwal@linaro.org" <sumit.semwal@linaro.org>
References: <20230911023038.30649-1-yong.wu@mediatek.com>
 <20230911023038.30649-6-yong.wu@mediatek.com>
 <d0373c02-9b22-661f-9930-ca720053c2a0@collabora.com>
 <a115a2a5d3ac218e6db65ccdb0a1876f9cfca02b.camel@mediatek.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <a115a2a5d3ac218e6db65ccdb0a1876f9cfca02b.camel@mediatek.com>
X-Rspamd-Queue-Id: 861E93EF28
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.40 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:46.235.227.172];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	MIME_GOOD(-0.10)[text/plain];
	ONCE_RECEIVED(0.10)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_TLS_ALL(0.00)[];
	ARC_NA(0.00)[];
	FREEMAIL_TO(0.00)[mediatek.com,gmail.com,amd.com,kernel.org,linaro.org];
	DKIM_TRACE(0.00)[collabora.com:+];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	NEURAL_HAM(-0.00)[-1.000];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[dt];
	RECEIVED_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[2.237.20.237:received];
	ASN(0.00)[asn:44684, ipnet:46.235.224.0/21, country:GB];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: PFHTVWA5QBR2K2JCRVLEIEDB6J342DXM
X-Message-ID-Hash: PFHTVWA5QBR2K2JCRVLEIEDB6J342DXM
X-MailFrom: angelogioacchino.delregno@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>, "jstultz@google.com" <jstultz@google.com>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, =?UTF-8?B?SmlhbmppYW8gWmVuZyAo5pu+5YGl5aejKQ==?= <Jianjiao.Zeng@mediatek.com>, =?UTF-8?B?S3VvaG9uZyBXYW5nICjnjovlnIvptLsp?= <kuohong.wang@mediatek.com>, "conor+dt@kernel.org" <conor+dt@kernel.org>, "Brian.Starkey@arm.com" <Brian.Starkey@arm.com>, "benjamin.gaignard@collabora.com" <benjamin.gaignard@collabora.com>, "tjmercier@google.com" <tjmercier@google.com>, "krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 5/9] dma-buf: heaps: mtk_sec_heap: Initialise tee session
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/PFHTVWA5QBR2K2JCRVLEIEDB6J342DXM/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SWwgMTIvMDkvMjMgMDg6MTcsIFlvbmcgV3UgKOWQtOWLhykgaGEgc2NyaXR0bzoNCj4gT24gTW9u
LCAyMDIzLTA5LTExIGF0IDExOjI5ICswMjAwLCBBbmdlbG9HaW9hY2NoaW5vIERlbCBSZWdubyB3
cm90ZToNCj4+IElsIDExLzA5LzIzIDA0OjMwLCBZb25nIFd1IGhhIHNjcml0dG86DQo+Pj4gVGhl
IFRFRSBwcm9iZSBsYXRlciB0aGFuIGRtYS1idWYgaGVhcCwgYW5kIFBST0JFX0RFREVSIGRvZXNu
J3Qgd29yaw0KPj4+IGhlcmUgc2luY2UgdGhpcyBpcyBub3QgYSBwbGF0Zm9ybSBkcml2ZXIsIHRo
ZXJlZm9yZSBpbml0aWFsaXNlIHRoZQ0KPj4+IFRFRQ0KPj4+IGNvbnRleHQvc2Vzc2lvbiB3aGls
ZSB3ZSBhbGxvY2F0ZSB0aGUgZmlyc3Qgc2VjdXJlIGJ1ZmZlci4NCj4+Pg0KPj4+IFNpZ25lZC1v
ZmYtYnk6IFlvbmcgV3UgPHlvbmcud3VAbWVkaWF0ZWsuY29tPg0KPj4+IC0tLQ0KPj4+ICAgIGRy
aXZlcnMvZG1hLWJ1Zi9oZWFwcy9tdGtfc2VjdXJlX2hlYXAuYyB8IDYxDQo+Pj4gKysrKysrKysr
KysrKysrKysrKysrKysrKw0KPj4+ICAgIDEgZmlsZSBjaGFuZ2VkLCA2MSBpbnNlcnRpb25zKCsp
DQo+Pj4NCj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2hlYXBzL210a19zZWN1cmVf
aGVhcC5jIGIvZHJpdmVycy9kbWEtDQo+Pj4gYnVmL2hlYXBzL210a19zZWN1cmVfaGVhcC5jDQo+
Pj4gaW5kZXggYmJmMWM4ZGNlMjNlLi5lM2RhMzNhM2QwODMgMTAwNjQ0DQo+Pj4gLS0tIGEvZHJp
dmVycy9kbWEtYnVmL2hlYXBzL210a19zZWN1cmVfaGVhcC5jDQo+Pj4gKysrIGIvZHJpdmVycy9k
bWEtYnVmL2hlYXBzL210a19zZWN1cmVfaGVhcC5jDQo+Pj4gQEAgLTEwLDYgKzEwLDEyIEBADQo+
Pj4gICAgI2luY2x1ZGUgPGxpbnV4L2Vyci5oPg0KPj4+ICAgICNpbmNsdWRlIDxsaW51eC9tb2R1
bGUuaD4NCj4+PiAgICAjaW5jbHVkZSA8bGludXgvc2xhYi5oPg0KPj4+ICsjaW5jbHVkZSA8bGlu
dXgvdGVlX2Rydi5oPg0KPj4+ICsjaW5jbHVkZSA8bGludXgvdXVpZC5oPg0KPj4+ICsNCj4+PiAr
I2RlZmluZSBUWl9UQV9NRU1fVVVJRAkJIjQ0Nzc1ODhhLTg0NzYtMTFlMi1hZDE1LQ0KPj4+IGU0
MWYxMzkwZDY3NiINCj4+PiArDQo+Pg0KPj4gSXMgdGhpcyBVVUlEIHRoZSBzYW1lIGZvciBhbGwg
U29DcyBhbmQgYWxsIFRaIHZlcnNpb25zPw0KPiANCj4gWWVzLiBJdCBpcyB0aGUgc2FtZSBmb3Ig
YWxsIFNvQ3MgYW5kIGFsbCBUWiB2ZXJzaW9ucyBjdXJyZW50bHkuDQo+IA0KDQpUaGF0J3MgZ29v
ZCBuZXdzIQ0KDQpJcyB0aGlzIFVVSUQgdXNlZCBpbiBhbnkgdXNlcnNwYWNlIGNvbXBvbmVudD8g
KGV4YW1wbGU6IEFuZHJvaWQgSEFMcz8pDQpJZiBpdCBpcyAoYW5kIEkgc29tZWhvdyBleHBlY3Qg
dGhhdCBpdCBpcyksIHRoZW4gdGhpcyBkZWZpbml0aW9uIHNob3VsZCBnbw0KdG8gYSBVQVBJIGhl
YWRlciwgYXMgc3VnZ2VzdGVkIGJ5IENocmlzdGlhbi4NCg0KQ2hlZXJzIQ0KDQo+Pg0KPj4gVGhh
bmtzLA0KPj4gQW5nZWxvDQo+Pg0KPj4NCj4+PiArI2RlZmluZSBNVEtfVEVFX1BBUkFNX05VTQkJ
NA0KPj4+ICAgIA0KPj4+ICAgIC8qDQo+Pj4gICAgICogTWVkaWFUZWsgc2VjdXJlIChjaHVuaykg
bWVtb3J5IHR5cGUNCj4+PiBAQCAtMjgsMTcgKzM0LDcyIEBAIHN0cnVjdCBtdGtfc2VjdXJlX2hl
YXBfYnVmZmVyIHsNCj4+PiAgICBzdHJ1Y3QgbXRrX3NlY3VyZV9oZWFwIHsNCj4+PiAgICAJY29u
c3QgY2hhcgkJKm5hbWU7DQo+Pj4gICAgCWNvbnN0IGVudW0ga3JlZV9tZW1fdHlwZSBtZW1fdHlw
ZTsNCj4+PiArCXUzMgkJCSBtZW1fc2Vzc2lvbjsNCj4+PiArCXN0cnVjdCB0ZWVfY29udGV4dAkq
dGVlX2N0eDsNCj4+PiAgICB9Ow0KPj4+ICAgIA0KPj4+ICtzdGF0aWMgaW50IG10a19vcHRlZV9j
dHhfbWF0Y2goc3RydWN0IHRlZV9pb2N0bF92ZXJzaW9uX2RhdGEgKnZlciwNCj4+PiBjb25zdCB2
b2lkICpkYXRhKQ0KPj4+ICt7DQo+Pj4gKwlyZXR1cm4gdmVyLT5pbXBsX2lkID09IFRFRV9JTVBM
X0lEX09QVEVFOw0KPj4+ICt9DQo+Pj4gKw0KPj4+ICtzdGF0aWMgaW50IG10a19rcmVlX3NlY3Vy
ZV9zZXNzaW9uX2luaXQoc3RydWN0IG10a19zZWN1cmVfaGVhcA0KPj4+ICpzZWNfaGVhcCkNCj4+
PiArew0KPj4+ICsJc3RydWN0IHRlZV9wYXJhbSB0X3BhcmFtW01US19URUVfUEFSQU1fTlVNXSA9
IHswfTsNCj4+PiArCXN0cnVjdCB0ZWVfaW9jdGxfb3Blbl9zZXNzaW9uX2FyZyBhcmcgPSB7MH07
DQo+Pj4gKwl1dWlkX3QgdGFfbWVtX3V1aWQ7DQo+Pj4gKwlpbnQgcmV0Ow0KPj4+ICsNCj4+PiAr
CXNlY19oZWFwLT50ZWVfY3R4ID0gdGVlX2NsaWVudF9vcGVuX2NvbnRleHQoTlVMTCwNCj4+PiBt
dGtfb3B0ZWVfY3R4X21hdGNoLA0KPj4+ICsJCQkJCQkgICAgTlVMTCwgTlVMTCk7DQo+Pj4gKwlp
ZiAoSVNfRVJSKHNlY19oZWFwLT50ZWVfY3R4KSkgew0KPj4+ICsJCXByX2VycigiJXM6IG9wZW4g
Y29udGV4dCBmYWlsZWQsIHJldD0lbGRcbiIsIHNlY19oZWFwLQ0KPj4+PiBuYW1lLA0KPj4+ICsJ
CSAgICAgICBQVFJfRVJSKHNlY19oZWFwLT50ZWVfY3R4KSk7DQo+Pj4gKwkJcmV0dXJuIC1FTk9E
RVY7DQo+Pj4gKwl9DQo+Pj4gKw0KPj4+ICsJYXJnLm51bV9wYXJhbXMgPSBNVEtfVEVFX1BBUkFN
X05VTTsNCj4+PiArCWFyZy5jbG50X2xvZ2luID0gVEVFX0lPQ1RMX0xPR0lOX1BVQkxJQzsNCj4+
PiArCXJldCA9IHV1aWRfcGFyc2UoVFpfVEFfTUVNX1VVSUQsICZ0YV9tZW1fdXVpZCk7DQo+Pj4g
KwlpZiAocmV0KQ0KPj4+ICsJCWdvdG8gY2xvc2VfY29udGV4dDsNCj4+PiArCW1lbWNweSgmYXJn
LnV1aWQsICZ0YV9tZW1fdXVpZC5iLCBzaXplb2YodGFfbWVtX3V1aWQpKTsNCj4+PiArDQo+Pj4g
KwlyZXQgPSB0ZWVfY2xpZW50X29wZW5fc2Vzc2lvbihzZWNfaGVhcC0+dGVlX2N0eCwgJmFyZywN
Cj4+PiB0X3BhcmFtKTsNCj4+PiArCWlmIChyZXQgPCAwIHx8IGFyZy5yZXQpIHsNCj4+PiArCQlw
cl9lcnIoIiVzOiBvcGVuIHNlc3Npb24gZmFpbGVkLCByZXQ9JWQ6JWRcbiIsDQo+Pj4gKwkJICAg
ICAgIHNlY19oZWFwLT5uYW1lLCByZXQsIGFyZy5yZXQpOw0KPj4+ICsJCXJldCA9IC1FSU5WQUw7
DQo+Pj4gKwkJZ290byBjbG9zZV9jb250ZXh0Ow0KPj4+ICsJfQ0KPj4+ICsJc2VjX2hlYXAtPm1l
bV9zZXNzaW9uID0gYXJnLnNlc3Npb247DQo+Pj4gKwlyZXR1cm4gMDsNCj4+PiArDQo+Pj4gK2Ns
b3NlX2NvbnRleHQ6DQo+Pj4gKwl0ZWVfY2xpZW50X2Nsb3NlX2NvbnRleHQoc2VjX2hlYXAtPnRl
ZV9jdHgpOw0KPj4+ICsJcmV0dXJuIHJldDsNCj4+PiArfQ0KPj4+ICsNCj4+PiAgICBzdGF0aWMg
c3RydWN0IGRtYV9idWYgKg0KPj4+ICAgIG10a19zZWNfaGVhcF9hbGxvY2F0ZShzdHJ1Y3QgZG1h
X2hlYXAgKmhlYXAsIHNpemVfdCBzaXplLA0KPj4+ICAgIAkJICAgICAgdW5zaWduZWQgbG9uZyBm
ZF9mbGFncywgdW5zaWduZWQgbG9uZyBoZWFwX2ZsYWdzKQ0KPj4+ICAgIHsNCj4+PiArCXN0cnVj
dCBtdGtfc2VjdXJlX2hlYXAgKnNlY19oZWFwID0gZG1hX2hlYXBfZ2V0X2RydmRhdGEoaGVhcCk7
DQo+Pj4gICAgCXN0cnVjdCBtdGtfc2VjdXJlX2hlYXBfYnVmZmVyICpzZWNfYnVmOw0KPj4+ICAg
IAlERUZJTkVfRE1BX0JVRl9FWFBPUlRfSU5GTyhleHBfaW5mbyk7DQo+Pj4gICAgCXN0cnVjdCBk
bWFfYnVmICpkbWFidWY7DQo+Pj4gICAgCWludCByZXQ7DQo+Pj4gICAgDQo+Pj4gKwkvKg0KPj4+
ICsJICogVEVFIHByb2JlIG1heSBiZSBsYXRlLiBJbml0aWFsaXNlIHRoZSBzZWN1cmUgc2Vzc2lv
biBpbiB0aGUNCj4+PiBmaXJzdA0KPj4+ICsJICogYWxsb2NhdGluZyBzZWN1cmUgYnVmZmVyLg0K
Pj4+ICsJICovDQo+Pj4gKwlpZiAoIXNlY19oZWFwLT5tZW1fc2Vzc2lvbikgew0KPj4+ICsJCXJl
dCA9IG10a19rcmVlX3NlY3VyZV9zZXNzaW9uX2luaXQoc2VjX2hlYXApOw0KPj4+ICsJCWlmIChy
ZXQpDQo+Pj4gKwkJCXJldHVybiBFUlJfUFRSKHJldCk7DQo+Pj4gKwl9DQo+Pj4gKw0KPj4+ICAg
IAlzZWNfYnVmID0ga3phbGxvYyhzaXplb2YoKnNlY19idWYpLCBHRlBfS0VSTkVMKTsNCj4+PiAg
ICAJaWYgKCFzZWNfYnVmKQ0KPj4+ICAgIAkJcmV0dXJuIEVSUl9QVFIoLUVOT01FTSk7DQo+Pg0K
Pj4NCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
YXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3Jn
ClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0
cy5saW5hcm8ub3JnCg==
