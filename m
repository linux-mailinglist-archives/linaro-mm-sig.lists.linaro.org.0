Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 88A0FAE665B
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 24 Jun 2025 15:28:40 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0A01644938
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 24 Jun 2025 13:28:16 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by lists.linaro.org (Postfix) with ESMTP id B1F6D3EFDE
	for <linaro-mm-sig@lists.linaro.org>; Tue, 24 Jun 2025 13:28:03 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of robin.murphy@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=robin.murphy@arm.com;
	dmarc=pass (policy=none) header.from=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7A9B7113E;
	Tue, 24 Jun 2025 06:27:45 -0700 (PDT)
Received: from [10.57.29.71] (unknown [10.57.29.71])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C468A3F58B;
	Tue, 24 Jun 2025 06:27:58 -0700 (PDT)
Message-ID: <a8c3df16-a460-49bb-ba4e-1a07135d24e5@arm.com>
Date: Tue, 24 Jun 2025 14:27:57 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Tomeu Vizoso <tomeu@tomeuvizoso.net>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Oded Gabbay <ogabbay@kernel.org>, Jonathan Corbet <corbet@lwn.net>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
 Kever Yang <kever.yang@rock-chips.com>, Daniel Stone <daniel@fooishbar.org>,
 Da Xue <da@libre.computer>, Jeff Hugo <jeff.hugo@oss.qualcomm.com>
References: <20250606-6-10-rocket-v7-0-dc16cfe6fe4e@tomeuvizoso.net>
 <20250606-6-10-rocket-v7-6-dc16cfe6fe4e@tomeuvizoso.net>
From: Robin Murphy <robin.murphy@arm.com>
Content-Language: en-GB
In-Reply-To: <20250606-6-10-rocket-v7-6-dc16cfe6fe4e@tomeuvizoso.net>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: B1F6D3EFDE
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.20 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[arm.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:217.140.96.0/20];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_NO_TLS_LAST(0.10)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	ARC_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:28939, ipnet:217.140.110.0/24, country:GB];
	RCPT_COUNT_TWELVE(0.00)[29];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[dt];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	R_DKIM_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FREEMAIL_TO(0.00)[tomeuvizoso.net,kernel.org,sntech.de,lwn.net,linux.intel.com,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com,collabora.com,rock-chips.com,fooishbar.org,libre.computer,oss.qualcomm.com]
X-Rspamd-Action: no action
Message-ID-Hash: TTRPAUPNBPYMOD6KTQZLBNBOGWXK6I3D
X-Message-ID-Hash: TTRPAUPNBPYMOD6KTQZLBNBOGWXK6I3D
X-MailFrom: robin.murphy@arm.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v7 06/10] dt-bindings: npu: rockchip,rknn: Add bindings
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/TTRPAUPNBPYMOD6KTQZLBNBOGWXK6I3D/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyNS0wNi0wNiA3OjI4IGFtLCBUb21ldSBWaXpvc28gd3JvdGU6DQo+IEFkZCB0aGUgYmlu
ZGluZ3MgZm9yIHRoZSBOZXVyYWwgUHJvY2Vzc2luZyBVbml0IElQIGZyb20gUm9ja2NoaXAuDQo+
IA0KPiB2MjoNCj4gLSBBZGFwdCB0byBuZXcgbm9kZSBzdHJ1Y3R1cmUgKG9uZSBub2RlIHBlciBj
b3JlLCBlYWNoIHdpdGggaXRzIG93bg0KPiAgICBJT01NVSkNCj4gLSBTZXZlcmFsIG1pc2MuIGZp
eGVzIGZyb20gU2ViYXN0aWFuIFJlaWNoZWwNCj4gDQo+IHYzOg0KPiAtIFNwbGl0IHJlZ2lzdGVy
IGJsb2NrIGluIGl0cyBjb25zdGl0dWVudCBzdWJibG9ja3MsIGFuZCBvbmx5IHJlcXVpcmUNCj4g
ICAgdGhlIG9uZXMgdGhhdCB0aGUga2VybmVsIHdvdWxkIGV2ZXIgdXNlIChOaWNvbGFzIEZyYXR0
YXJvbGkpDQo+IC0gR3JvdXAgc3VwcGxpZXMgKFJvYiBIZXJyaW5nKQ0KPiAtIEV4cGxhaW4gdGhl
IHdheSBpbiB3aGljaCB0aGUgdG9wIGNvcmUgaXMgc3BlY2lhbCAoUm9iIEhlcnJpbmcpDQo+IA0K
PiB2NDoNCj4gLSBDaGFuZ2UgcmVxdWlyZWQgbm9kZSBuYW1lIHRvIG5wdUAgKFJvYiBIZXJyaW5n
IGFuZCBLcnp5c3p0b2YgS296bG93c2tpKQ0KPiAtIFJlbW92ZSB1bm5lZWRlZCBpdGVtczogKEty
enlzenRvZiBLb3psb3dza2kpDQo+IC0gRml4IHVzZSBvZiBtaW5JdGVtcy9tYXhJdGVtcyAoS3J6
eXN6dG9mIEtvemxvd3NraSkNCj4gLSBBZGQgcmVnLW5hbWVzIHRvIGxpc3Qgb2YgcmVxdWlyZWQg
cHJvcGVydGllcyAoS3J6eXN6dG9mIEtvemxvd3NraSkNCj4gLSBGaXggZXhhbXBsZSAoS3J6eXN6
dG9mIEtvemxvd3NraSkNCj4gDQo+IHY1Og0KPiAtIFJlbmFtZSBmaWxlIHRvIHJvY2tjaGlwLHJr
MzU4OC1ya25uLWNvcmUueWFtbCAoS3J6eXN6dG9mIEtvemxvd3NraSkNCj4gLSBTdHJlYW1saW5l
IGNvbXBhdGlibGUgcHJvcGVydHkgKEtyenlzenRvZiBLb3psb3dza2kpDQo+IA0KPiB2NjoNCj4g
LSBSZW1vdmUgbWVudGlvbiB0byBOVkRMQSwgYXMgdGhlIGhhcmR3YXJlIGlzIG9ubHkgaW5jaWRl
bnRhbGx5IHJlbGF0ZWQNCj4gICAgKEtldmVyIFlhbmcpDQo+IC0gTWFyayBwY2xrIGFuZCBucHUg
Y2xvY2tzIGFzIHJlcXVpcmVkIGJ5IGFsbCBjbG9ja3MgKFJvYiBIZXJyaW5nKQ0KPiANCj4gdjc6
DQo+IC0gUmVtb3ZlIGFsbE9mIHNlY3Rpb24sIG5vdCBuZWVkZWQgbm93IHRoYXQgYWxsIG5vZGVz
IHJlcXVpcmUgNCBjbG9ja3MNCj4gICAgKEhlaWtvIFN0w7xibmVyKQ0KPiANCj4gU2lnbmVkLW9m
Zi1ieTogU2ViYXN0aWFuIFJlaWNoZWwgPHNlYmFzdGlhbi5yZWljaGVsQGNvbGxhYm9yYS5jb20+
DQo+IFNpZ25lZC1vZmYtYnk6IFRvbWV1IFZpem9zbyA8dG9tZXVAdG9tZXV2aXpvc28ubmV0Pg0K
PiBSZXZpZXdlZC1ieTogS3J6eXN6dG9mIEtvemxvd3NraSA8a3J6eXN6dG9mLmtvemxvd3NraUBs
aW5hcm8ub3JnPg0KPiAtLS0NCj4gICAuLi4vYmluZGluZ3MvbnB1L3JvY2tjaGlwLHJrMzU4OC1y
a25uLWNvcmUueWFtbCAgICB8IDExOCArKysrKysrKysrKysrKysrKysrKysNCj4gICAxIGZpbGUg
Y2hhbmdlZCwgMTE4IGluc2VydGlvbnMoKykNCj4gDQo+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0
aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbnB1L3JvY2tjaGlwLHJrMzU4OC1ya25uLWNvcmUueWFt
bCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9ucHUvcm9ja2NoaXAscmszNTg4
LXJrbm4tY29yZS55YW1sDQo+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0DQo+IGluZGV4IDAwMDAwMDAw
MDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAuLjA1ODhjMDg1YTcyM2EzNGY0ZmEzMGE5
NjgwZWE5NDhkOTYwYjA5MmYNCj4gLS0tIC9kZXYvbnVsbA0KPiArKysgYi9Eb2N1bWVudGF0aW9u
L2RldmljZXRyZWUvYmluZGluZ3MvbnB1L3JvY2tjaGlwLHJrMzU4OC1ya25uLWNvcmUueWFtbA0K
PiBAQCAtMCwwICsxLDExOCBAQA0KPiArIyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogKEdQTC0y
LjAtb25seSBPUiBCU0QtMi1DbGF1c2UpDQo+ICslWUFNTCAxLjINCj4gKy0tLQ0KPiArJGlkOiBo
dHRwOi8vZGV2aWNldHJlZS5vcmcvc2NoZW1hcy9ucHUvcm9ja2NoaXAscmszNTg4LXJrbm4tY29y
ZS55YW1sIw0KPiArJHNjaGVtYTogaHR0cDovL2RldmljZXRyZWUub3JnL21ldGEtc2NoZW1hcy9j
b3JlLnlhbWwjDQo+ICsNCj4gK3RpdGxlOiBOZXVyYWwgUHJvY2Vzc2luZyBVbml0IElQIGZyb20g
Um9ja2NoaXANCj4gKw0KPiArbWFpbnRhaW5lcnM6DQo+ICsgIC0gVG9tZXUgVml6b3NvIDx0b21l
dUB0b21ldXZpem9zby5uZXQ+DQo+ICsNCj4gK2Rlc2NyaXB0aW9uOg0KPiArICBSb2NrY2hpcCBJ
UCBmb3IgYWNjZWxlcmF0aW5nIGluZmVyZW5jZSBvZiBuZXVyYWwgbmV0d29ya3MuDQo+ICsNCj4g
KyAgVGhlcmUgaXMgdG8gYmUgYSBub2RlIHBlciBlYWNoIGNvcmUgaW4gdGhlIE5QVS4gSW4gUm9j
a2NoaXAncyBkZXNpZ24gdGhlcmUNCj4gKyAgd2lsbCBiZSBvbmUgY29yZSB0aGF0IGlzIHNwZWNp
YWwgYmVjYXVzZSBpdCBpcyBhYmxlIHRvIHJlZGlzdHJpYnV0ZSB3b3JrIHRvDQo+ICsgIHRoZSBv
dGhlciBjb3JlcyBieSBmb3J3YXJkaW5nIHJlZ2lzdGVyIHdyaXRlcyBhbmQgc2hhcmluZyBkYXRh
LiBUaGlzIHNwZWNpYWwNCj4gKyAgY29yZSBpcyBjYWxsZWQgdGhlIHRvcCBjb3JlIGFuZCBzaG91
bGQgaGF2ZSB0aGUgY29tcGF0aWJsZSBzdHJpbmcgdGhhdA0KPiArICBjb3JyZXNwb25kcyB0byB0
b3AgY29yZXMuDQoNClNheSBhIGZ1dHVyZSBTb0MsIGZvciBzY2FsaW5nIHJlYXNvbnMsIHB1dHMg
ZG93biB0d28gb3IgbW9yZSB3aG9sZSBOUFVzIA0KcmF0aGVyIHRoYW4ganVzdCBpbmNyZWFzaW5n
IHRoZSBudW1iZXIgb2Ygc3ViLWNvcmVzIGluIG9uZT8gSG93IGlzIGEgRFQgDQpjb25zdW1lciB0
aGVuIGdvaW5nIHRvIGtub3cgd2hpY2ggImNvcmVzIiBhcmUgYXNzb2NpYXRlZCB3aXRoIHdoaWNo
ICJ0b3AgDQpjb3JlcyI/IEkgdGhpbmsgYXQgdGhlIHZlcnkgbGVhc3QgdGhleSB3YW50IHBoYW5k
bGVzIGluIG9uZSBkaXJlY3Rpb24gb3IgDQp0aGUgb3RoZXIsIGJ1dCBpZiB0aGVyZSBpcyBhIHJl
YWwgZnVuY3Rpb25hbCBoaWVyYXJjaHkgdGhlbiBJJ2QgYmUgDQpzdHJvbmdseSB0ZW1wdGVkIHRv
IGhhdmUgdGhlICJjb3JlIiBub2RlcyBhcyBjaGlsZHJlbiBvZiB0aGVpciAidG9wIA0KY29yZSIs
IHBhcnRpY3VsYXJseSBzaW5jZSAiZm9yd2FyZGluZyByZWdpc3RlciB3cml0ZXMiIHNvdW5kcyBh
YnNvbHV0ZWx5IA0KbGlrZSBzb21ldGhpbmcgd2hpY2ggY291bGQganVzdGlmeSBiZWluZyByZXBy
ZXNlbnRlZCBhcyBhICJidXMiIGluIHRoZSANCkRUIHNlbnNlLg0KDQpUaGFua3MsDQpSb2Jpbi4N
Cg0KPiArDQo+ICtwcm9wZXJ0aWVzOg0KPiArICAkbm9kZW5hbWU6DQo+ICsgICAgcGF0dGVybjog
J15ucHVAW2EtZjAtOV0rJCcNCj4gKw0KPiArICBjb21wYXRpYmxlOg0KPiArICAgIGVudW06DQo+
ICsgICAgICAtIHJvY2tjaGlwLHJrMzU4OC1ya25uLWNvcmUtdG9wDQo+ICsgICAgICAtIHJvY2tj
aGlwLHJrMzU4OC1ya25uLWNvcmUNCj4gKw0KPiArICByZWc6DQo+ICsgICAgbWF4SXRlbXM6IDMN
Cj4gKw0KPiArICByZWctbmFtZXM6DQo+ICsgICAgaXRlbXM6DQo+ICsgICAgICAtIGNvbnN0OiBw
Yw0KPiArICAgICAgLSBjb25zdDogY25hDQo+ICsgICAgICAtIGNvbnN0OiBjb3JlDQo+ICsNCj4g
KyAgY2xvY2tzOg0KPiArICAgIG1heEl0ZW1zOiA0DQo+ICsNCj4gKyAgY2xvY2stbmFtZXM6DQo+
ICsgICAgaXRlbXM6DQo+ICsgICAgICAtIGNvbnN0OiBhY2xrDQo+ICsgICAgICAtIGNvbnN0OiBo
Y2xrDQo+ICsgICAgICAtIGNvbnN0OiBucHUNCj4gKyAgICAgIC0gY29uc3Q6IHBjbGsNCj4gKw0K
PiArICBpbnRlcnJ1cHRzOg0KPiArICAgIG1heEl0ZW1zOiAxDQo+ICsNCj4gKyAgaW9tbXVzOg0K
PiArICAgIG1heEl0ZW1zOiAxDQo+ICsNCj4gKyAgbnB1LXN1cHBseTogdHJ1ZQ0KPiArDQo+ICsg
IHBvd2VyLWRvbWFpbnM6DQo+ICsgICAgbWF4SXRlbXM6IDENCj4gKw0KPiArICByZXNldHM6DQo+
ICsgICAgbWF4SXRlbXM6IDINCj4gKw0KPiArICByZXNldC1uYW1lczoNCj4gKyAgICBpdGVtczoN
Cj4gKyAgICAgIC0gY29uc3Q6IHNyc3RfYQ0KPiArICAgICAgLSBjb25zdDogc3JzdF9oDQo+ICsN
Cj4gKyAgc3JhbS1zdXBwbHk6IHRydWUNCj4gKw0KPiArcmVxdWlyZWQ6DQo+ICsgIC0gY29tcGF0
aWJsZQ0KPiArICAtIHJlZw0KPiArICAtIHJlZy1uYW1lcw0KPiArICAtIGNsb2Nrcw0KPiArICAt
IGNsb2NrLW5hbWVzDQo+ICsgIC0gaW50ZXJydXB0cw0KPiArICAtIGlvbW11cw0KPiArICAtIHBv
d2VyLWRvbWFpbnMNCj4gKyAgLSByZXNldHMNCj4gKyAgLSByZXNldC1uYW1lcw0KPiArICAtIG5w
dS1zdXBwbHkNCj4gKyAgLSBzcmFtLXN1cHBseQ0KPiArDQo+ICthZGRpdGlvbmFsUHJvcGVydGll
czogZmFsc2UNCj4gKw0KPiArZXhhbXBsZXM6DQo+ICsgIC0gfA0KPiArICAgICNpbmNsdWRlIDxk
dC1iaW5kaW5ncy9jbG9jay9yb2NrY2hpcCxyazM1ODgtY3J1Lmg+DQo+ICsgICAgI2luY2x1ZGUg
PGR0LWJpbmRpbmdzL2ludGVycnVwdC1jb250cm9sbGVyL2lycS5oPg0KPiArICAgICNpbmNsdWRl
IDxkdC1iaW5kaW5ncy9pbnRlcnJ1cHQtY29udHJvbGxlci9hcm0tZ2ljLmg+DQo+ICsgICAgI2lu
Y2x1ZGUgPGR0LWJpbmRpbmdzL3Bvd2VyL3JrMzU4OC1wb3dlci5oPg0KPiArICAgICNpbmNsdWRl
IDxkdC1iaW5kaW5ncy9yZXNldC9yb2NrY2hpcCxyazM1ODgtY3J1Lmg+DQo+ICsNCj4gKyAgICBi
dXMgew0KPiArICAgICAgI2FkZHJlc3MtY2VsbHMgPSA8Mj47DQo+ICsgICAgICAjc2l6ZS1jZWxs
cyA9IDwyPjsNCj4gKw0KPiArICAgICAgbnB1QGZkYWIwMDAwIHsNCj4gKyAgICAgICAgY29tcGF0
aWJsZSA9ICJyb2NrY2hpcCxyazM1ODgtcmtubi1jb3JlLXRvcCI7DQo+ICsgICAgICAgIHJlZyA9
IDwweDAgMHhmZGFiMDAwMCAweDAgMHgxMDAwPiwNCj4gKyAgICAgICAgICAgICAgPDB4MCAweGZk
YWIxMDAwIDB4MCAweDEwMDA+LA0KPiArICAgICAgICAgICAgICA8MHgwIDB4ZmRhYjMwMDAgMHgw
IDB4MTAwMD47DQo+ICsgICAgICAgIHJlZy1uYW1lcyA9ICJwYyIsICJjbmEiLCAiY29yZSI7DQo+
ICsgICAgICAgIGFzc2lnbmVkLWNsb2NrcyA9IDwmc2NtaV9jbGsgU0NNSV9DTEtfTlBVPjsNCj4g
KyAgICAgICAgYXNzaWduZWQtY2xvY2stcmF0ZXMgPSA8MjAwMDAwMDAwPjsNCj4gKyAgICAgICAg
Y2xvY2tzID0gPCZjcnUgQUNMS19OUFUwPiwgPCZjcnUgSENMS19OUFUwPiwNCj4gKyAgICAgICAg
ICAgICAgICAgPCZzY21pX2NsayBTQ01JX0NMS19OUFU+LCA8JmNydSBQQ0xLX05QVV9ST09UPjsN
Cj4gKyAgICAgICAgY2xvY2stbmFtZXMgPSAiYWNsayIsICJoY2xrIiwgIm5wdSIsICJwY2xrIjsN
Cj4gKyAgICAgICAgaW50ZXJydXB0cyA9IDxHSUNfU1BJIDExMCBJUlFfVFlQRV9MRVZFTF9ISUdI
IDA+Ow0KPiArICAgICAgICBpb21tdXMgPSA8JnJrbm5fbW11X3RvcD47DQo+ICsgICAgICAgIG5w
dS1zdXBwbHkgPSA8JnZkZF9ucHVfczA+Ow0KPiArICAgICAgICBwb3dlci1kb21haW5zID0gPCZw
b3dlciBSSzM1ODhfUERfTlBVVE9QPjsNCj4gKyAgICAgICAgcmVzZXRzID0gPCZjcnUgU1JTVF9B
X1JLTk4wPiwgPCZjcnUgU1JTVF9IX1JLTk4wPjsNCj4gKyAgICAgICAgcmVzZXQtbmFtZXMgPSAi
c3JzdF9hIiwgInNyc3RfaCI7DQo+ICsgICAgICAgIHNyYW0tc3VwcGx5ID0gPCZ2ZGRfbnB1X21l
bV9zMD47DQo+ICsgICAgICB9Ow0KPiArICAgIH07DQo+ICsuLi4NCj4gDQoNCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGlu
ZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBz
ZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
