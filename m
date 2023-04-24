Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id B6F186ECFF1
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 24 Apr 2023 16:07:47 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 351B03EE09
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 24 Apr 2023 14:07:46 +0000 (UTC)
Received: from 189.cn (ptr.189.cn [183.61.185.101])
	by lists.linaro.org (Postfix) with ESMTP id 2E5983F59E
	for <linaro-mm-sig@lists.linaro.org>; Mon, 24 Apr 2023 14:07:41 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of 15330273260@189.cn designates 183.61.185.101 as permitted sender) smtp.mailfrom=15330273260@189.cn;
	dmarc=none
HMM_SOURCE_IP: 10.64.8.43:56046.1777299264
HMM_ATTACHE_NUM: 0000
HMM_SOURCE_TYPE: SMTP
Received: from clientip-114.242.206.180 (unknown [10.64.8.43])
	by 189.cn (HERMES) with SMTP id 5900410026E;
	Mon, 24 Apr 2023 22:07:36 +0800 (CST)
Received: from  ([114.242.206.180])
	by gateway-151646-dep-7b48884fd-tj646 with ESMTP id b96101ecef424972bd508052d9d47069 for emil.l.velikov@gmail.com;
	Mon, 24 Apr 2023 22:07:38 CST
X-Transaction-ID: b96101ecef424972bd508052d9d47069
X-Real-From: 15330273260@189.cn
X-Receive-IP: 114.242.206.180
X-MEDUSA-Status: 0
Sender: 15330273260@189.cn
Message-ID: <aaad7121-538b-e2ad-8334-2682a120ed9b@189.cn>
Date: Mon, 24 Apr 2023 22:07:35 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
To: Emil Velikov <emil.l.velikov@gmail.com>
References: <20230403171304.2157326-1-suijingfeng@loongson.cn>
 <20230403171304.2157326-3-suijingfeng@loongson.cn>
 <CACvgo53h+X26wngVmxpn3oVb9kbJezTHx61p3rZDR7sw1AQrWQ@mail.gmail.com>
Content-Language: en-US
From: Sui Jingfeng <15330273260@189.cn>
In-Reply-To: <CACvgo53h+X26wngVmxpn3oVb9kbJezTHx61p3rZDR7sw1AQrWQ@mail.gmail.com>
X-Spamd-Result: default: False [-1.70 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:183.61.185.0/24];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_NO_TLS_LAST(0.10)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	R_DKIM_NA(0.00)[];
	FREEMAIL_CC(0.00)[linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com,lists.linaro.org,loongson.cn,vger.kernel.org,lists.freedesktop.org];
	FROM_EQ_ENVFROM(0.00)[];
	ASN(0.00)[asn:4134, ipnet:183.0.0.0/10, country:CN];
	FREEMAIL_ENVFROM(0.00)[189.cn];
	NEURAL_HAM(-0.00)[-0.568];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DMARC_NA(0.00)[189.cn];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[189.cn];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[];
	RCVD_COUNT_TWO(0.00)[2]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 2E5983F59E
X-Spamd-Bar: -
Message-ID-Hash: YSHAEF4TYSNJOA2ZUNX63AGM6N3OETEW
X-Message-ID-Hash: YSHAEF4TYSNJOA2ZUNX63AGM6N3OETEW
X-MailFrom: 15330273260@189.cn
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Daniel Vetter <daniel@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Christian Koenig <christian.koenig@amd.com>, linaro-mm-sig@lists.linaro.org, Li Yi <liyi@loongson.cn>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, nathan@kernel.org, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v10 2/2] drm: add kms driver for loongson display controller
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/YSHAEF4TYSNJOA2ZUNX63AGM6N3OETEW/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SGksDQoNCk9uIDIwMjMvNC80IDIyOjEwLCBFbWlsIFZlbGlrb3Ygd3JvdGU6DQo+PiAtLS0gL2Rl
di9udWxsDQo+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vbG9vbmdzb24vbHNkY19kZWJ1Z2ZzLmMN
Cj4+ICt2b2lkIGxzZGNfZGVidWdmc19pbml0KHN0cnVjdCBkcm1fbWlub3IgKm1pbm9yKQ0KPj4g
K3sNCj4+ICsjaWZkZWYgQ09ORklHX0RFQlVHX0ZTDQo+PiArICAgICAgIGRybV9kZWJ1Z2ZzX2Ny
ZWF0ZV9maWxlcyhsc2RjX2RlYnVnZnNfbGlzdCwNCj4+ICsgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIEFSUkFZX1NJWkUobHNkY19kZWJ1Z2ZzX2xpc3QpLA0KPj4gKyAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgbWlub3ItPmRlYnVnZnNfcm9vdCwNCj4+ICsgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIG1pbm9yKTsNCj4+ICsjZW5kaWYNCj4+ICt9DQo+IFNob3Vs
ZCBwcm9iYWJseSBidWlsZCB0aGUgZmlsZSB3aGVuIGRlYnVnZnMgaXMgZW5hYmxlZCBhbmQgcHJv
dmlkZQ0KPiBuby1vcCBzdHViIGluIHRoZSBoZWFkZXIuIFNlZSBub3V2ZWF1IGZvciBhbiBleGFt
cGxlLg0KPg0KPg0KSXQgc2VlbSB0aGF0IHRoZSBkcm0gY29yZSBhbHJlYWR5IGRvbmUgdGhpcyBm
b3IgdXMsIGFyZSB3ZSByZWFsbHkgbmVlZCANCnRob3NlICNpZmRlZiBndWFyZCBhbnltb3JlPw0K
DQpJIHJlbW92ZSBhbGwgb2YgdGhlwqAgI2lmZGVmIENPTkZJR19ERUJVR19GUyBpbiBteSBwcm9n
cmFtIGFuZCBkaXNhYmxlIA0KdGhlIGRlYnVnZnMgb3B0aW9uIGluIG1lbnVjb25maWcNCg0KbXkg
ZHJpdmVyIGNvbXBpbGUgd2l0aG91dCBhbnkgZXJyb3IuDQoNCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0t
IGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVt
YWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
