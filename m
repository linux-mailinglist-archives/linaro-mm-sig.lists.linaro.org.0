Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id DC4897129DF
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 26 May 2023 17:45:56 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D67814043F
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 26 May 2023 15:45:55 +0000 (UTC)
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com [209.85.221.65])
	by lists.linaro.org (Postfix) with ESMTPS id 411E03EE6A
	for <linaro-mm-sig@lists.linaro.org>; Fri, 26 May 2023 15:45:50 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=baylibre-com.20221208.gappssmtp.com header.s=20221208 header.b=wcwdcdzg;
	spf=pass (lists.linaro.org: domain of abailon@baylibre.com designates 209.85.221.65 as permitted sender) smtp.mailfrom=abailon@baylibre.com;
	dmarc=none
Received: by mail-wr1-f65.google.com with SMTP id ffacd0b85a97d-30adb83aa69so438663f8f.2
        for <linaro-mm-sig@lists.linaro.org>; Fri, 26 May 2023 08:45:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1685115949; x=1687707949;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=OX879Xbtaq85/UPwb2f8tq7maPJyO+QLeOiqV5vIfjA=;
        b=wcwdcdzgtFryBiRdWxpCymHOki7j+wUintN3/adfIJ575HFiGwWvvLiGL3NjuxwRQ3
         gnUjpSgJCSKNn+8anAU5m8DeoSjJYKZLGPLMI87dIP859SN/KobgtxhHNXERf3MpE9K5
         wJZUC7GW/spdUYxb446kFGqU4Uox1guSsugZJ1mL4Sxg+LrCdgMTx4Y4akJ/Mt/7RFwi
         B5nFj66Up8V+9vb6gRJa0CQVT00R3zPujsuOvvvrh439gLa0zVGQpFB4Xigr6dOrgHbQ
         bI0KYS1ghZCHj0a5KknxdXkNKb6dYjp57m9fazVfgxJPBaDmVRu6NgMEzB6jnFMUzpvT
         dqXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685115949; x=1687707949;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OX879Xbtaq85/UPwb2f8tq7maPJyO+QLeOiqV5vIfjA=;
        b=RTmcl1HIWuvN0JEY2iwhBOakOpuP7tAA4ZhvsMjaGTsrO8g90vGLd+nbDiMtuj/P9s
         pXNpEokdrD4UOKmcrg/qY02mtYZ0d4b3lkT+a/6Gny6wXkHThSeULKmj1Q24Q3FtSXmJ
         DML/6ktOo649jseLbREsTYsQAue2dEnDcCWL6We05GDlm/n2V81edLN4ljl9lFwiOUOX
         n6Xld0aAM6AKaeEwPeMdWGHYvj1iWRdcj76pDad2zvLxQIWSD0R5WgnMcAolu+MCxA2j
         TT6ImmUd7YntGh2fzlCpsLRn9NQNPfSdqvw2m9rvmSBVeQm0T442D9LK8AEY9wmvV59p
         gxoA==
X-Gm-Message-State: AC+VfDwDAYN5VdRFyNTOgfUVIc+RaCRoCFcde09C60rZAV3fHiLlAOh7
	LJH/ZwjZuAPB4aPHXD68GkPwIQ==
X-Google-Smtp-Source: ACHHUZ5UA+yXPBx7fP3hSIrT+zIrLky1zEBpDc0IHgjMDGgcI9UwC6u1LCxdVBVyifx+CDLiyp1GIA==
X-Received: by 2002:a5d:6ac4:0:b0:309:e24:57b0 with SMTP id u4-20020a5d6ac4000000b003090e2457b0mr2066240wrw.30.1685115949116;
        Fri, 26 May 2023 08:45:49 -0700 (PDT)
Received: from [10.1.4.6] (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id c11-20020adfe74b000000b0030630120e56sm2580734wrn.57.2023.05.26.08.45.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 May 2023 08:45:48 -0700 (PDT)
Message-ID: <01591ec1-7c87-514c-047b-bec1c45ddfa5@baylibre.com>
Date: Fri, 26 May 2023 17:45:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: Oded Gabbay <ogabbay@kernel.org>, Kevin Hilman <khilman@baylibre.com>,
 Jeffrey Hugo <quic_jhugo@quicinc.com>, airlied@gmail.com,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de,
 devicetree@vger.kernel.org, conor+dt@kernel.org, bero@baylibre.com,
 jstephan@baylibre.com, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, christian.koenig@amd.com,
 linaro-mm-sig@lists.linaro.org, robh+dt@kernel.org,
 linux-mediatek@lists.infradead.org, nbelin@baylibre.com,
 krzysztof.kozlowski+dt@linaro.org, matthias.bgg@gmail.com,
 linux-media@vger.kernel.org, sumit.semwal@linaro.org,
 linux-arm-kernel@lists.infradead.org, angelogioacchino.delregno@collabora.com
References: <20230517145237.295461-1-abailon@baylibre.com>
 <d0807fe4-dba2-8244-f655-d04e80973572@quicinc.com>
 <7ha5xud3m7.fsf@baylibre.com>
 <CAFCwf10hNjGtEYDi24LREnMLRGT7mRECvqQMdZWv=-uA7YELYg@mail.gmail.com>
 <ZG3pmSnUSc9oCtev@phenom.ffwll.local>
From: Alexandre Bailon <abailon@baylibre.com>
In-Reply-To: <ZG3pmSnUSc9oCtev@phenom.ffwll.local>
X-Spamd-Result: default: False [-2.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20221208.gappssmtp.com:s=20221208];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_TO(0.00)[kernel.org,baylibre.com,quicinc.com,gmail.com,linux.intel.com,suse.de,vger.kernel.org,lists.freedesktop.org,amd.com,lists.linaro.org,lists.infradead.org,linaro.org,collabora.com];
	NEURAL_HAM(-0.00)[-0.990];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_TWO(0.00)[2];
	RCPT_COUNT_TWELVE(0.00)[24];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[baylibre-com.20221208.gappssmtp.com:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DMARC_NA(0.00)[baylibre.com];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_NA(0.00)[];
	REDIRECTOR_URL(0.00)[twitter.com];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[dt];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.221.65:from]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 411E03EE6A
X-Spamd-Bar: --
Message-ID-Hash: MSSNYKDORAG4F4ZVIR27HM75R42U4OST
X-Message-ID-Hash: MSSNYKDORAG4F4ZVIR27HM75R42U4OST
X-MailFrom: abailon@baylibre.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 0/7] Add a DRM driver to support AI Processing Unit (APU)
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/MSSNYKDORAG4F4ZVIR27HM75R42U4OST/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

DQoNCk9uIDUvMjQvMjMgMTI6NDAsIERhbmllbCBWZXR0ZXIgd3JvdGU6DQo+IE9uIFdlZCwgTWF5
IDI0LCAyMDIzIGF0IDAxOjI3OjAwUE0gKzAzMDAsIE9kZWQgR2FiYmF5IHdyb3RlOg0KPj4gT24g
V2VkLCBNYXkgMjQsIDIwMjMgYXQgMjozNOKAr0FNIEtldmluIEhpbG1hbiA8a2hpbG1hbkBiYXls
aWJyZS5jb20+IHdyb3RlOg0KPj4+DQo+Pj4gSmVmZnJleSBIdWdvIDxxdWljX2podWdvQHF1aWNp
bmMuY29tPiB3cml0ZXM6DQo+Pj4NCj4+Pj4gT24gNS8xNy8yMDIzIDg6NTIgQU0sIEFsZXhhbmRy
ZSBCYWlsb24gd3JvdGU6DQo+Pj4+PiBUaGlzIGFkZHMgYSBEUk0gZHJpdmVyIHRoYXQgaW1wbGVt
ZW50cyBjb21tdW5pY2F0aW9uIGJldHdlZW4gdGhlIENQVSBhbmQgYW4NCj4+Pj4+IEFQVS4gVGhl
IGRyaXZlciB0YXJnZXQgZW1iZWRkZWQgZGV2aWNlIHRoYXQgdXN1YWxseSBydW4gaW5mZXJlbmNl
IHVzaW5nIHNvbWUNCj4+Pj4+IHByZWJ1aWx0IG1vZGVscy4gVGhlIGdvYWwgaXMgdG8gcHJvdmlk
ZSBjb21tb24gaW5mcmFzdHJ1Y3R1cmUgdGhhdCBjb3VsZCBiZQ0KPj4+Pj4gcmUtdXNlZCB0byBz
dXBwb3J0IG1hbnkgYWNjZWxlcmF0b3JzLiBCb3RoIGtlcm5lbCwgdXNlcnNwYWNlIGFuZCBmaXJt
d2FyZSB0cmllcw0KPj4+Pj4gdG8gdXNlIHN0YW5kYXJkIGFuZCBleGlzdGluZyB0byBsZXZlcmFn
ZSB0aGUgZGV2ZWxvcG1lbnQgYW5kIG1haW50ZW5hbmNlIGVmZm9ydC4NCj4+Pj4+IFRoZSBzZXJp
ZXMgaW1wbGVtZW50cyB0d28gcGxhdGZvcm0gZHJpdmVycywgb25lIGZvciBzaW11bGF0aW9uIGFu
ZCBhbm90aGVyIG9uZSBmb3INCj4+Pj4+IHRoZSBtdDgxODMgKGNvbXBhdGlibGUgd2l0aCBtdDgz
NjUpLg0KPj4+Pg0KPj4+PiBUaGlzIGxvb2tzIGxpa2UgdGhlIDMgZXhpc3RpbmcgQWNjZWwgZHJp
dmVycy4gIFdoeSBpcyB0aGlzIGluIERSTT8NCj4+Pg0KPj4+IFllcywgdGhpcyBiZWxvbmdzIGlu
IGFjY2VsLiAgSSB0aGluayBBbGV4IGhhZCBzb21lIGlzc3VlcyBhcm91bmQgdGhlDQo+Pj4gaW5m
cmEgaW4gYWNjZWwgd2l0aCBkZXZpY2Ugbm9kZXMgbm90IGFwcGVhcmluZy9vcGVuaW5nIHByb3Bl
cmx5LCBidXQNCj4+PiBJJ2xsIGxldCBoaW0gY29tbWVudCB0aGVyZS4gIEJ1dCBlaXRoZXIgd2F5
LCB0aGUgcmlnaHQgYXBwcm9hY2ggc2hvdWxkDQo+Pj4gYmUgdG8gZml4IGFueSBpc3N1ZXMgaW4g
YWNjZWwgYW5kIG1vdmUgaXQgdGhlcmUuDQo+Pj4NCj4+PiBbLi4uXQ0KPj4+DQo+Pj4+PiAgICAu
Li4vZGV2aWNldHJlZS9iaW5kaW5ncy9ncHUvbXRrLGFwdS1kcm0ueWFtbCAgfCAgMzggKysNCj4+
Pj4+ICAgIGRyaXZlcnMvZ3B1L2RybS9LY29uZmlnICAgICAgICAgICAgICAgICAgICAgICB8ICAg
MiArDQo+Pj4+PiAgICBkcml2ZXJzL2dwdS9kcm0vTWFrZWZpbGUgICAgICAgICAgICAgICAgICAg
ICAgfCAgIDEgKw0KPj4+Pj4gICAgZHJpdmVycy9ncHUvZHJtL2FwdS9LY29uZmlnICAgICAgICAg
ICAgICAgICAgIHwgIDIyICsNCj4+Pj4+ICAgIGRyaXZlcnMvZ3B1L2RybS9hcHUvTWFrZWZpbGUg
ICAgICAgICAgICAgICAgICB8ICAxMCArDQo+Pj4+PiAgICBkcml2ZXJzL2dwdS9kcm0vYXB1L2Fw
dV9kcnYuYyAgICAgICAgICAgICAgICAgfCAyODIgKysrKysrKysrDQo+Pj4+PiAgICBkcml2ZXJz
L2dwdS9kcm0vYXB1L2FwdV9nZW0uYyAgICAgICAgICAgICAgICAgfCAyMzAgKysrKysrKw0KPj4+
Pj4gICAgZHJpdmVycy9ncHUvZHJtL2FwdS9hcHVfaW50ZXJuYWwuaCAgICAgICAgICAgIHwgMjA1
ICsrKysrKw0KPj4+Pj4gICAgZHJpdmVycy9ncHUvZHJtL2FwdS9hcHVfc2NoZWQuYyAgICAgICAg
ICAgICAgIHwgNTkyICsrKysrKysrKysrKysrKysrKw0KPj4+Pj4gICAgZHJpdmVycy9ncHUvZHJt
L2FwdS9zaW11X2FwdS5jICAgICAgICAgICAgICAgIHwgMzEzICsrKysrKysrKw0KPj4+Pj4gICAg
aW5jbHVkZS91YXBpL2RybS9hcHVfZHJtLmggICAgICAgICAgICAgICAgICAgIHwgIDgxICsrKw0K
Pj4+Pg0KPj4+PiAiYXB1IiBzZWVtcyB0b28gZ2VuZXJpYy4gIFdlIGFscmVhZHkgaGF2ZSAzICJB
SSBwcm9jZXNzaW5nIHVuaXRzIiBvdmVyDQo+Pj4+IGluIGRyaXZlcnMvYWNjZWwgYWxyZWFkeS4u
Lg0KPj4+DQo+Pj4gSW5kZWVkLCBpdCBpcyBnZW5lcmljLCBidXQgdGhhdCdzIGtpbmQgb2YgdGhl
IHBvaW50IGZvciB0aGlzIGRyaXZlcg0KPj4+IHNpbmNlIGl0J3MgdGFyZ2V0dGVkIGF0IGdlbmVy
YWxpemluZyB0aGUgaW50ZXJmYWNlIHdpdGggIkFJIHByb2Nlc3NpbmcNCj4+PiB1bml0cyIgb24g
YSBncm93aW5nIG51bWJlciBvZiBlbWJlZGRlZCBTb0NzIChBUk0sIFJJU0MtViwgZXRjLikgIElu
DQo+Pj4gYWRkaXRpb24sIHRoZSBnZW5lcmljIG5hbWluZyBpcyBpbnRlbnRpb25hbCBiZWNhdXNl
IHRoZSBnb2FsIGlzIGJpZ2dlcg0KPj4+IHRoYW4gdGhlIGtlcm5lbCBhbmQgaXMgd29ya2luZyB0
b3dhcmRzIGEgZ2VuZXJpYywgc2hhcmVkICJsaWJBUFUiDQo+Pj4gdXNlcnNwYWNlWzFdLCBidXQg
YWxzbyBjb21tb24gZmlybXdhcmUgZm9yIERTUC1zdHlsZSBpbmZlcmVuY2UgZW5naW5lcw0KPj4+
IChlLmcuIGFuYWxnb3VzIFNvdW5kIE9wZW4gRmlybXdhcmUgZm9yIGF1ZGlvIERTUHMuKQ0KPj4+
DQo+Pj4gQXMgdXN1YWwsIHRoZSB2YXJpb3VzIFNvQyB2ZW5kb3JzIHVzZSBkaWZmZXJlbnQgbmFt
ZXMgKEFQVSwgTlBVLCBOTg0KPj4+IHVuaXQsIGV0Yy4pICBidXQgd2UnZCBsaWtlIGEgZ2VuZXJp
YyBuYW1lIGZvciB0aGUgY2xhc3Mgb2YgZGV2aWNlcw0KPj4+IHRhcmdldHRlZCBieSB0aGlzIGRy
aXZlci4gIEFuZCB1bmZvcnR1bmF0ZWx5LCBpdCBsb29rcyBsaWtlIHRoZSBlcXVhbGx5DQo+Pj4g
Z2VuZXJpYyAiVmVyc2F0aWxlIHByb2Nlc3NpbmcgdW5pdCIgaXMgYWxyZWFkeSB0YWtlbiBJbnRl
bCdzDQo+Pj4gZHJpdmVycy9hY2NlbC9pdnB1LiA6KQ0KPj4+DQo+Pj4gTWF5YmUgc2luY2UgdGhp
cyBpcyBtb3JlIGFib3V0IGdlbmVyYWxpemluZyB0aGUgaW50ZXJmYWNlIGJldHdlZW4gdGhlDQo+
Pj4gQ1BVIHJ1bm5pbmcgbGludXggYW5kIHRoZSBBUFUsIHdoYXQgYWJvdXQgdGhlIG5hbWUgYXB1
X2lmPyAgQnV0IEkgZ3Vlc3MNCj4+PiB0aGF0IGFwcGxpZXMgdG8gdGhlIG90aGVyIDMgZHJpdmVy
cyBpbiBkcml2ZXJzL2FjY2VsbCBhbHNvLiAgSG1tbS4uLg0KPj4+DQo+Pj4gTmFtaW5nIHRoaW5n
cyBpcyBoYXJkWzJdLCBzbyB3ZSdyZSBkZWZpbml0bHkgb3BlbiB0byBvdGhlciBpZGVhcy4gIEFu
eQ0KPj4+IHN1Z2dlc3Rpb25zPw0KPj4gTWF5YmUgbW9kZWwgaXQgYWNjb3JkaW5nIHRvIHRoZSB0
aW55IGRyaXZlciBpbiBkcm0gZGlzcGxheSA/IFlvdSBjYW4NCj4+IHRoZW4gY2FsbCBpdCB0aW55
X2FwdSA6LSkNCj4+IERpc2Nsb3N1cmU6IEl0IHdhcyBEYW5pZWwncyBzdWdnZXN0aW9uLCBoZSBj
YW4gY2hpbWUgaW4gd2l0aCBtb3JlDQo+PiBkZXRhaWxzIG9uIHRoZSB0aW55IGRyaXZlciBjb25j
ZXB0Lg0KPiANCj4gWWVhaCBzbyBtYXliZSBhIGJpdCBtb3JlIGRldGFpbCBvbiBteSB0aG91Z2h0
czoNCj4gDQo+IEZpcnN0IHRoaXMgc21lbGxzIGxpa2UgYSBuZWVkIGJ5cGFzcyBvZiB0aGUgZW50
aXJlICJ3ZSB3YW50IG9wZW4gdXNlcnNwYWNlDQo+IGZvciBhY2NlbCBkcml2ZXJzIiBydWxlLiBU
aGUgcnVsZSBpc24ndCBxdWl0ZSBhIHN0cmljdCBhcyBmb3IgZHJtIGdwdQ0KPiBkcml2ZXJzIChu
b3Qgc3VyZSB3ZSBlbmRlZCB1cCBkb2N1bWVudGluZyBleGFjdGx5IHdoYXQsIGJ1dCBpaXJjIHRo
ZQ0KPiBjb25zZW5zdXMgd2FzIHRoYXQgZm9yIGJ1aWxkLXRpbWUgb25seSBkZXBlbmRlbmNpZXMg
d2UncmUgb2sgd2l0aA0KPiBkb3duc3RyZWFtIGNvbXBpbGVycyksIGJ1dCBpdCdzIHN0aWxsIHRo
ZXJlLg0KV2hhdCBpcyBsZXR0aW5nIHlvdSB0aGluayB0aGF0IHdlIHdhbnQgdG8gYnlwYXNzIG9w
ZW4gc291cmNlIHJlcXVpcmVtZW50cyA/DQpBbHRob3VnaCB0aGUgbmV1cmFsIG5ldHdvcmsgZmly
bXdhcmUgYW5kIHVzZXJzcGFjZSBhcHBsaWNhdGlvbiBhcmUgbm90IHlldA0Kb3BlbnNvdXJjZSwg
b3VyIGludGVudGlvbiBpcyB0byBkZXZlbG9wIGEgZnVsbCBvcGVuIHNvdXJjZSBzdGFjay4NCkN1
cnJlbnRseSwgd2Ugb25seSBzdXBwb3J0IE1lZGlhdGVrIEFQVSAoYW4gWHRlbnNhIFZQNikgYW5k
IHdlIGhhdmUgdG8gDQp1c2UgY2xvc2VkIHNvdXJjZSBzb3Rmd2FyZSB0byBleGVjdXRlIGluZmVy
ZW5jZXMgb24gdGhlIGFjY2VsZXJhdG9yLg0KQXMgZmFyIEkga25vdywgdGhlcmUgc29mdHdhcmUg
c3RhY2sgc2ltaWxhciB0byBtZXNhIHdoZXJlIHdlIGNvdWxkIGFkZA0Kc3VwcG9ydCBvZiBhIG5l
dyBhY2NlbGVyYXRvciAodGhpcyBpcyBhbHNvIHRydWUgZm9yIGZpcm13YXJlKS4NClRoYXQgaXMg
YWN0dWFsbHkgd2hhdCB3ZSB3b3VsZCBsaWtlIHRvIGRvLiBCdXQgdGhpcyB3aWxsIHRha2UgYSBs
b3Qgb2YgDQp0aW1lIGFuZCB3ZSBjb25zaWRlciB0aGlzIGRyaXZlciBhcyBhIGZpcnN0IChzbWFs
bCkgc3RlcC4NCj4gDQo+IEFuZCBhdCBsZWFzdCBmcm9tIGEgcXVpY2sgbG9vayBhcHUua28gYW5k
IGxpYmFwdSBqdXN0IGxvb2sgbGlrZSBhIGdlbmVyaWMNCj4gYWNjZWwgaW50ZXJmYWNlLCBhbmQg
dGhhdCdzIG5vdCBlbm91Z2guDQo+IA0KPiBGb3IgdGhlIGJpZyB0cmFpbmluZyBlbmdpbmVzIGl0
J3MgbW9yZSBvciBsZXNzICJlbm91Z2ggdG8gcnVuIHB5dG9yY2gsIGJ1dA0KPiBpdCBjYW4gYmUg
cmVhbGx5IHNsb3ciLCBub3Qgc3VyZSB3aGF0IHRoZSByaWdodCBzdGFuZGFyZCBmb3IgdGhlc2UN
Cj4gaW5mZXJlbmNlLW9ubHkgZHJpdmVycyBzaG91bGQgYmUuDQpUbyBiZSBob25lc3QsIEkgZG9u
J3Qga25vdyB3aGF0IHdvdWxkIGJlIHJlcXVpcmVkIGZvciB0cmFpbmluZyBlbmdpbmVzLg0KV2Ug
b25seSB0YXJnZXQgYWNjZWxlcmF0b3JzIGZvciBlbWJlZGRlZCBkZXZpY2UgdGhhdCB1c3VhbGx5
IG9ubHkgcnVuIA0KaW5mZXJlbmNlcy4gSW4gbXkgb3BpbmlvbiwgdGhpcyBpcyAyIGRpZmZlcmVu
dCB1c2UgY2FzZXMgYW5kIEkgZG9uJ3QgDQp0aGluayB3ZSBjb3VsZCBhZGRyZXNzIHRoZW0gaW4g
dGhlIHNhbWUgd2F5Lg0KPiANCj4gU28gdGhhdCdzIHRoZSBmaXJzdCByZWFzb24gd2h5IEkgZG9u
J3QgbGlrZSB0aGlzLg0KPiANCj4gVGhlIG90aGVyIGlzIHRoYXQgSSB0aGluayBpZiB3ZSBkbyBl
bmQgdXAgd2l0aCBhIHBpbGUgb2YgdGlueSBhY2NlbA0KPiBkcml2ZXJzLCB3ZSBzaG91bGQgcHJv
YmFibHkgbG9vayBpbnRvIHNvbWV0aGluZyBsaWtlIHNpbW1wbGVkcm0gZm9yIHRoZQ0KPiB0aW55
IGRpc3BsYXkgZHJpdmVycy4gUHJvYmFibHkgc3RpbGwgSVAgc3BlY2lmaWMgaW9jdGxzIChhdCBs
ZWFzdCBtb3N0KSBzbw0KPiB0aGF0IElQIHNwZWNpZmljIGpvYiBrbm93cyBhbmQgYWxsIHRoYXQg
YXJlIGVhc3ksIGJ1dCB0aGVuIGp1c3QgcGFzcyB0byBhDQo+IGZyYW1ld29yayB0aGF0IHNpbXBs
aWZpZXMgYSBkcm0gZ2VtIGRyaXZlciB0byAid3JpdGUgcHRlcyIgYW5kICJydW4gam9iIg0KPiBj
YWxsYmFjaywgbWF5YmUgd2l0aCBhbiBvcHRpb25hbCAiY3JlYXRlL2Rlc3Ryb3kgdm0vY3R4IiBm
b3IgaHcgd2hpY2ggY2FuDQo+IGRvIHRoYXQuDQo+IA0KPiBTbyBtYXliZSB3ZSBlbmQgdXAgd2l0
aCBhIGRyaXZlcnMvYWNjZWwvdGlueSBhbmQgYSBidW5jaCBtb3JlIGhlbHBlcnMNCj4gYXJvdW5k
IHRoZSBleGlzdGluZyBnZW0gb25lcy4gVGhlIHJ1bGUgd2UgaGF2ZSBmb3IgZHJtL3RpbnkgaXMg
IjEgZmlsZSwNCj4gbGVzcyB0aGFuIDFrbG9jIiwgYW5kIHRoZXJlJ3MgYSBidW5jaCBvZiB0aGVt
LiBJIGRvIHRoaW5rIHdlIGNhbiBhY2hpZXZlDQo+IHRoZSBzYW1lIGZvciB0aW55IGFjY2VsIGlu
ZmVyZW5jZSBlbmdpbmVzIChidXQgaXQncyBzdGlsbCBhIGJpdCBhIHJvYWQpLg0KPiBNYXliZSB0
aW55IGFjY2VsIGlzIG1vcmUgbGlrZSAibGVzcyB0aGFuIDVrbG9jIiBzaW5jZSB5b3UgbmVlZCBh
IGJpdCBtb3JlDQo+IGdsdWUgZm9yIHRoZSBkcml2ZXIgc3BlY2lmaWMgaW9jdGwgc3R1ZmYgLSBt
YXliZSB0aGF0J3Mgb25seSBuZWVkZWQgZm9yDQo+IHRoZSBzdWJtaXQgaW9jdGwsIG1heWJlIGFs
c28gZm9yIGJ1ZmZlciBtYXAvdW5tYXAgYW5kIGNyZWF0aW9uLg0KVGhpcyBtYWtlcyBzZW5zZSB0
byBtZS4NCj4gDQo+IEFsc28gbm90ZSB0aGF0IHRoZXJlJ3MgYW4gZW50aXJlIHBpbGUgb2YgaW4t
ZmxpZ2h0IHdvcmsgZm9yIGFkZGluZyBuZXcNCj4gaGVscGVycyB0byB0aGUgZ2VtIHdvcmxkIHRv
IG1ha2UgdGhpcyBhbGwgZWFzaWVyLiBPbmNlIHdlIGhhdmUgZ3B1dmEgYW5kDQo+IGV4ZWMgaGVs
cGVycyB0aGVyZSBub3QgbXVjaCBnbHVlIGxlZnQgdG8gdGllIGl0IGFsbCB0b2dldGhlciB3aXRo
IHRoZQ0KPiBzY2hlZHVsZXIuDQpJIHdyb3RlIHRoaXMgc2VyaWVzIGEgbG9uZyB0aW1lIGFnbyBh
bmQganVzdCByZWJhc2VkIGl0IHJlY2VudGx5Lg0KSSB3aWxsIHRha2Ugc29tZSB0aW1lIHRvIHNl
ZSB0aGUgaW4tZmxpZ2h0IHdvcmsgYW5kIHNlZSBpZiB0aGF0IA0Kc29tZXRoaW5nIEkgY291bGQg
c3RhcnQgdXNpbmcuDQo+IA0KPiBCdXQgdGhlIHJlYWwgY3J1eCBpcyB0aGF0IGFuIGFjY2VsIGlu
ZmVyZW5jZSBkcml2ZXIgcmVhbGx5IG5lZWRzIHRvIGhhdmUNCj4gZW5vdWdoIHVzZXJzcGFjZSB0
byBkbyBhbiBhY3R1YWwgaW5mZXJlbmNlIGpvYiB3aXRoIHNvbWUNCj4gYW5kcm9pZC9jcm9zL3do
YXRldmVyIGZyYW1ld29yayBmb3IgaW5mZXJlbmNlICh0aGVyZSdzIGp1c3QgdG9vIG1hbnkpLg0K
V2UgYXJlIGN1cnJlbnRseSBzdHVjayB3aXRoIGNsb3NlZCBzb3VyY2UgZmltcndhcmUsIHVzZXJz
cGFjZSANCmFwcGxpY2F0aW9ucyBhbmQgdG9vbGNoYWlucyAod29ya3Mgd2l0aCBhbmRyb2lkIGFu
ZCBsaW51eCkuDQpXZSBhcmUgbG9va2luZyBmb3IgYSBzb2x1dGlvbiBidXQgaW1wbGVtZW50aW5n
IHNvbWV0aGluZyB3aWxsIHRha2Ugc29tZSANCnRpbWUuDQoNCkFsZXhhbmRyZQ0KPiAtRGFuaWVs
DQo+IA0KPj4gT2RlZA0KPj4NCj4+Pg0KPj4+IEtldmluDQo+Pj4NCj4+PiBbMV0gaHR0cHM6Ly9n
aXRsYWIuYmF5bGlicmUuY29tL2JheWxpYnJlL2xpYmFwdS9saWJhcHUNCj4+Pg0KPj4+IFsyXQ0K
Pj4+ICJUaGVyZSBhcmUgMiBoYXJkIHByb2JsZW1zIGluIGNvbXB1dGVyIHNjaWVuY2U6IGNhY2hl
IGludmFsaWRhdGlvbiwNCj4+PiAgIG5hbWluZyB0aGluZ3MgYW5kIG9mZi1ieS0xIGVycm9ycy4i
DQo+Pj4gICAtLSBodHRwczovL3R3aXR0ZXIuY29tL3NlY3JldEdlZWsvc3RhdHVzLzcyNjk5OTc4
NjgNCj4+Pg0KPiANCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGlu
YXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVh
dmVAbGlzdHMubGluYXJvLm9yZwo=
