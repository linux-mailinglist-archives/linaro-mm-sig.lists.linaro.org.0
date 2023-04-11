Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DD3B6DD5E6
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 11 Apr 2023 10:49:39 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0574B3EBCB
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 11 Apr 2023 08:49:38 +0000 (UTC)
Received: from 189.cn (ptr.189.cn [183.61.185.101])
	by lists.linaro.org (Postfix) with ESMTP id 61B903E975
	for <linaro-mm-sig@lists.linaro.org>; Tue, 11 Apr 2023 08:49:26 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of 15330273260@189.cn designates 183.61.185.101 as permitted sender) smtp.mailfrom=15330273260@189.cn;
	dmarc=none
HMM_SOURCE_IP: 10.64.8.41:52050.376874080
HMM_ATTACHE_NUM: 0000
HMM_SOURCE_TYPE: SMTP
Received: from clientip-114.242.206.180 (unknown [10.64.8.41])
	by 189.cn (HERMES) with SMTP id BEB57100208;
	Tue, 11 Apr 2023 16:49:20 +0800 (CST)
Received: from  ([114.242.206.180])
	by gateway-151646-dep-7b48884fd-ljp89 with ESMTP id 1b31214f715b4affa0bb41c4bfa92964 for emil.l.velikov@gmail.com;
	Tue, 11 Apr 2023 16:49:23 CST
X-Transaction-ID: 1b31214f715b4affa0bb41c4bfa92964
X-Real-From: 15330273260@189.cn
X-Receive-IP: 114.242.206.180
X-MEDUSA-Status: 0
Sender: 15330273260@189.cn
Message-ID: <2f024efb-3e9f-8777-9f32-ca1f0e436b40@189.cn>
Date: Tue, 11 Apr 2023 16:49:19 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Content-Language: en-US
To: Emil Velikov <emil.l.velikov@gmail.com>
References: <20230403171304.2157326-1-suijingfeng@loongson.cn>
 <20230403171304.2157326-3-suijingfeng@loongson.cn>
 <CACvgo53h+X26wngVmxpn3oVb9kbJezTHx61p3rZDR7sw1AQrWQ@mail.gmail.com>
From: Sui Jingfeng <15330273260@189.cn>
In-Reply-To: <CACvgo53h+X26wngVmxpn3oVb9kbJezTHx61p3rZDR7sw1AQrWQ@mail.gmail.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 61B903E975
X-Spamd-Bar: -
X-Spamd-Result: default: False [-1.70 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:183.61.185.0/24];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_NO_TLS_LAST(0.10)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	R_DKIM_NA(0.00)[];
	FREEMAIL_CC(0.00)[linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com,lists.linaro.org,loongson.cn,vger.kernel.org,lists.freedesktop.org,lists.loongnix.cn];
	FROM_EQ_ENVFROM(0.00)[];
	ASN(0.00)[asn:4134, ipnet:183.0.0.0/10, country:CN];
	FREEMAIL_ENVFROM(0.00)[189.cn];
	NEURAL_HAM(-0.00)[-0.930];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DMARC_NA(0.00)[189.cn];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[189.cn];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[];
	RCVD_COUNT_TWO(0.00)[2]
Message-ID-Hash: UUQFBQBUPCMN52BRBO325MB5BFX4SOC5
X-Message-ID-Hash: UUQFBQBUPCMN52BRBO325MB5BFX4SOC5
X-MailFrom: 15330273260@189.cn
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Daniel Vetter <daniel@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Christian Koenig <christian.koenig@amd.com>, linaro-mm-sig@lists.linaro.org, Li Yi <liyi@loongson.cn>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, nathan@kernel.org, linux-media@vger.kernel.org, loongson-kernel@lists.loongnix.cn
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v10 2/2] drm: add kms driver for loongson display controller
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/UUQFBQBUPCMN52BRBO325MB5BFX4SOC5/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SGksDQoNCk9uIDIwMjMvNC80IDIyOjEwLCBFbWlsIFZlbGlrb3Ygd3JvdGU6DQo+PiAtLS0gL2Rl
di9udWxsDQo+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vbG9vbmdzb24vbHNkY19kcnYuYw0KPj4g
K3N0YXRpYyBjb25zdCBzdHJ1Y3QgbHNkY19kZXNjIGRjX2luX2xzN2ExMDAwID0gew0KPj4gKyAg
ICAgICAuY2hpcCA9IENISVBfTFM3QTEwMDAsDQo+PiArICAgICAgIC5udW1fb2ZfY3J0YyA9IExT
RENfTlVNX0NSVEMsDQo+PiArICAgICAgIC5tYXhfcGl4ZWxfY2xrID0gMjAwMDAwLA0KPj4gKyAg
ICAgICAubWF4X3dpZHRoID0gMjA0OCwNCj4+ICsgICAgICAgLm1heF9oZWlnaHQgPSAyMDQ4LA0K
Pj4gKyAgICAgICAubnVtX29mX2h3X2N1cnNvciA9IDEsDQo+PiArICAgICAgIC5od19jdXJzb3Jf
dyA9IDMyLA0KPj4gKyAgICAgICAuaHdfY3Vyc29yX2ggPSAzMiwNCj4+ICsgICAgICAgLnBpdGNo
X2FsaWduID0gMjU2LA0KPj4gKyAgICAgICAubWNfYml0cyA9IDQwLA0KPj4gKyAgICAgICAuaGFz
X3ZibGFua19jb3VudGVyID0gZmFsc2UsDQo+PiArICAgICAgIC5oYXNfc2Nhbl9wb3MgPSB0cnVl
LA0KPj4gKyAgICAgICAuaGFzX2J1aWx0aW5faTJjID0gdHJ1ZSwNCj4+ICsgICAgICAgLmhhc192
cmFtID0gdHJ1ZSwNCj4+ICsgICAgICAgLmhhc19ocGRfcmVnID0gZmFsc2UsDQo+PiArICAgICAg
IC5pc19zb2MgPSBmYWxzZSwNCj4+ICt9Ow0KPj4gKw0KPj4gK3N0YXRpYyBjb25zdCBzdHJ1Y3Qg
bHNkY19kZXNjIGRjX2luX2xzN2EyMDAwID0gew0KPj4gKyAgICAgICAuY2hpcCA9IENISVBfTFM3
QTIwMDAsDQo+PiArICAgICAgIC5udW1fb2ZfY3J0YyA9IExTRENfTlVNX0NSVEMsDQo+PiArICAg
ICAgIC5tYXhfcGl4ZWxfY2xrID0gMzUwMDAwLA0KPj4gKyAgICAgICAubWF4X3dpZHRoID0gNDA5
NiwNCj4+ICsgICAgICAgLm1heF9oZWlnaHQgPSA0MDk2LA0KPj4gKyAgICAgICAubnVtX29mX2h3
X2N1cnNvciA9IDIsDQo+PiArICAgICAgIC5od19jdXJzb3JfdyA9IDY0LA0KPj4gKyAgICAgICAu
aHdfY3Vyc29yX2ggPSA2NCwNCj4+ICsgICAgICAgLnBpdGNoX2FsaWduID0gNjQsDQo+PiArICAg
ICAgIC5tY19iaXRzID0gNDAsIC8qIHN1cHBvcnQgNDgsIGJ1dCB1c2UgNDAgZm9yIGJhY2t3YXJk
IGNvbXBhdGliaWxpdHkgKi8NCj4+ICsgICAgICAgLmhhc192YmxhbmtfY291bnRlciA9IHRydWUs
DQo+PiArICAgICAgIC5oYXNfc2Nhbl9wb3MgPSB0cnVlLA0KPj4gKyAgICAgICAuaGFzX2J1aWx0
aW5faTJjID0gdHJ1ZSwNCj4+ICsgICAgICAgLmhhc192cmFtID0gdHJ1ZSwNCj4+ICsgICAgICAg
Lmhhc19ocGRfcmVnID0gdHJ1ZSwNCj4+ICsgICAgICAgLmlzX3NvYyA9IGZhbHNlLA0KPj4gK307
DQo+PiArDQo+IFJvdWdobHkgYSBxdWFydGVyIG9mIHRoZSBhYm92ZSBhcmUgaWRlbnRpY2FsLiBJ
dCBtaWdodCBiZSBiZXR0ZXIgdG8NCj4gZHJvcCB0aGVtIGZvciBub3cgYW5kIHJlLWludHJvZHVj
ZSBhcyBuZWVkZWQgd2l0aCBmdXR1cmUgY29kZS4NCj4NCk15IGluaXRpYWwgaW50ZW50IGhlcmUg
aXMgdG8gZ2l2ZSBhIHNrZWxldG9uIG9mIG91ciBoYXJkd2FyZSBmZWF0dXJlcyB0byANCnJldmll
d2VycywNCg0KTm90IG9ubHkgZm9yIGdlYXJpbmcgdGhlIGNvbnRyb2wsIGJ1dCBhbHNvIGZvciBl
YXNpZXIgdGhlIHJldmlld2luZyBwcm9jZXNzLg0KDQpXaXRob3V0IHRoaXMsIG90aGVyIHBhcnQg
b2YgdGhpcyBwYXRjaCBtYXkgbG9va3MgcXVlc3Rpb25hYmxlIGFnYWluLg0KDQoNCldlwqAgY291
bGQgcmVtb3ZlIGFsbCBvZiB0aGUgZmVhdHVyZXMgbG9vayB1cCBrZXkgaW4gdGhlIHN0cnVjdCBs
c2RjX2Rlc2MsDQoNCmxlYXZlIHRoZSAuY2hpcCBtZW1iZXIgdGhlcmUgb25seS7CoCBIYXJkIGNv
ZGVkIGV2ZXJ5dGhpbmcgZWxzZSBhY2NvcmRpbmcgDQp0byB0aGUgY2hpcCBvbmx5Lg0KDQpCdXQg
dGhlIGNvZGUgbG9va3MgdWdseSBieSBkb2luZyB0aGF0IHdheS4gV2Ugd2FudCB3ZWFrZW4gdGhl
DQoNCklmIGxvb25nc29uIFNvQyBpcyBpbnRyb2R1Y2VkLCB0aGUgaWRlbnRpY2FsIHdpbGwgZGVj
cmVhc2UuDQoNCkl0J3MgT0sswqAgSSBjb3VsZCBkcm9wIGFzIG11Y2ggYXMgcG9zc2libGUgYXQg
bmV4dCB2ZXJzaW9uLg0KDQo+PiArY29uc3QgY2hhciAqY2hpcF90b19zdHIoZW51bSBsb29uZ3Nv
bl9jaGlwX2ZhbWlseSBjaGlwKQ0KPj4gK3sNCj4+ICsgICAgICAgaWYgKGNoaXAgPT0gQ0hJUF9M
UzdBMjAwMCkNCj4+ICsgICAgICAgICAgICAgICByZXR1cm4gIkxTN0EyMDAwIjsNCj4+ICsNCj4+
ICsgICAgICAgaWYgKGNoaXAgPT0gQ0hJUF9MUzdBMTAwMCkNCj4+ICsgICAgICAgICAgICAgICBy
ZXR1cm4gIkxTN0ExMDAwIjsNCj4+ICsNCj4gSWYgaXQgd2VyZSBtZSwgSSB3b3VsZCBhZGQgdGhl
IG5hbWUgaW50byB0aGUgbHNkY19kZXNjLg0KPg0KQWdyZWUsIHRoaXMgaXMgYWNjZXB0YWJsZS4g
V2lsbCBiZSBjaGFuZ2VkIGF0IHRoZSBuZXh0IHZlcnNpb24uDQpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAt
LSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBl
bWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
