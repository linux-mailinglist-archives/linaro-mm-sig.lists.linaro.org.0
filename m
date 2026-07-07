Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id DkY1M9twVmpv5gAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 19:24:43 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AD31757605
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 19:24:43 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=gmail.com header.s=20251104 header.b=fMY1gb6s;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=gmail.com (policy=none)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6EED440A24
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 17:24:42 +0000 (UTC)
Received: from mail-oi1-f173.google.com (mail-oi1-f173.google.com [209.85.167.173])
	by lists.linaro.org (Postfix) with ESMTPS id 3E9C4409FB
	for <linaro-mm-sig@lists.linaro.org>; Tue,  7 Jul 2026 22:03:10 +0000 (UTC)
Received: by mail-oi1-f173.google.com with SMTP id 5614622812f47-4864ebb6268so29590b6e.3
        for <linaro-mm-sig@lists.linaro.org>; Tue, 07 Jul 2026 15:03:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783461789; x=1784066589; darn=lists.linaro.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :content-type:mime-version:references:message-id:subject:cc:to:from
         :date:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=r+Cz/DGzX9LixlJM1WDO9JL3XKhxalEZ7sqlBmeIS0k=;
        b=fMY1gb6sKqA50Fd3iJ7qiBl4jg0IPZJA4NQMlFpRZY36ocpbsO8ymgIF9KUuOclmik
         jCl+TrITKa7u0WGZlyq2x96RLiXiCG22RWlrXJkWh+agn427A0gZqJgVuM/onkuCDvMG
         2YpDJmC33s8aSA6QD+Gx/64urEJWVaoP+rU0wZeu9TzSIJBcdqJAzy/Wlqn4uXcnP2WA
         GGu207k4hYvsKzgxohZaf53057YAN6I0uKDcZ8IjUAfViSiwCemEVdQ3SOFbPzADjTgo
         DSfDljnwhaVs/XmeWM96VIYg81tcCe9SZsgBjFcbmzkht63lAQmrm/lNzLq55Nkq4E1H
         qT9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783461789; x=1784066589;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :content-type:mime-version:references:message-id:subject:cc:to:from
         :date:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=r+Cz/DGzX9LixlJM1WDO9JL3XKhxalEZ7sqlBmeIS0k=;
        b=E2OGjVYHWG2Epg+PKTE+YUB14nMyLUGHIS90er5DhUDZsvBBQKA7V43799bGNtfcvH
         /Bu/jGPGM206nGHfY2qyiMuQfengk+D4IfoaccvrW5ybcTzRuVVT9n1bgktCiw1UjYc6
         U192V1FbdkEkjL2Zt6ajZnvhKnRxiutrDw/7OTFVyIgp1OcT34dIaODS20rJEWpWft0p
         u1Ilslx9RosH84pVj+SCqFO66yLXF7LxdWP7NEJDeV28IiUXjGRRmgfViBTJ/1oU1KJS
         rJlfQ/bd3bfmwbBdXtDvykv1OaK0Ji7O0XnL7GgLGl8Ld5ThgNOeApf/Zo7xaecjZA2R
         SZRA==
X-Forwarded-Encrypted: i=1; AFNElJ9TfKfET+845RBYlLit43RHOpov39Mu2QkQcVYmyb7uBYTbfo6HlzjStBsmU7DzE0r1/F4TTfeHo/5YuuNd@lists.linaro.org
X-Gm-Message-State: AOJu0Yxz9IBgQ1cdtxM+rHc0gOsWRZrfMNZ7wCK+qWIgsTQ4QySQJvcs
	KY/enzB0PfeulaPadDTzoW91C9rU6L0UekX2AD10yoKgawEGa0kizihp
X-Gm-Gg: AfdE7ckxKBM6fHV6k/liS3GFTIUeFdfsOOOYl8YUELdvyse7WVvbMUBwwhy0WDj8BB4
	o/H8RzmDYReh71jYWt7PUZPJpT5trYjZWCrmVLYLpCYqKz7Uyxqwbw+s6JuJLLAY5F4qnfaSDSh
	TwBpZ4Up5a5iDeV/F6QKy2R9rG0atxTuv8EUUrOfSFOM2Q7CSGimxomSX3hV2f0jo1SZ/FWe/g9
	bXNV3NJFditPt7HyG1dRtAdgif1XmbHhn5a/MCAhDPMRI4HqKjG2tvAcBNAy8Acc+FZpqWGKfMt
	2RK2bKqaY6u/BVD9hdWmEwCnf+e9SNZWha5uioWy6ajuMG4OFRJOJphGOVBSMNu6O5/IcjhvjNi
	0LGrQyRcxlYKbyQlWeSebD+5Re1LX4PlePGfB9pRfqSWYZl5+bVNEzsYepx9puTdTarq5gyVzM9
	zzHQRRyqSE9VbVY0jkGb0nI2e+Rp+gLbi8
X-Received: by 2002:a05:6808:5393:b0:489:f199:42bb with SMTP id 5614622812f47-49fdc040ab9mr5109894b6e.8.1783461784688;
        Tue, 07 Jul 2026 15:03:04 -0700 (PDT)
Received: from devvm29614.prn0.facebook.com ([2a03:2880:ff:1::])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-4a1acc82f3csm430555b6e.3.2026.07.07.15.03.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Jul 2026 15:03:03 -0700 (PDT)
Date: Tue, 7 Jul 2026 15:02:59 -0700
From: Bobby Eshleman <bobbyeshleman@gmail.com>
To: Mina Almasry <almasrymina@google.com>
Message-ID: <ak13k4XZsHnGKIOb@devvm29614.prn0.facebook.com>
References: <20260701-tcpdm-large-niovs-v4-0-ca4654f37570@meta.com>
 <CAHS8izOmA_U=Q6WOO5mcoi2vBps_JFEtAQa3gXk=JcL3rqE1BA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHS8izOmA_U=Q6WOO5mcoi2vBps_JFEtAQa3gXk=JcL3rqE1BA@mail.gmail.com>
X-Spamd-Bar: ---
X-MailFrom: bobbyeshleman@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: PKR5WOSWRISIB6DOJHK26LLYCRGP6WTG
X-Message-ID-Hash: PKR5WOSWRISIB6DOJHK26LLYCRGP6WTG
X-Mailman-Approved-At: Tue, 14 Jul 2026 17:18:33 +0000
CC: Donald Hunter <donald.hunter@gmail.com>, Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>, Andrew Lunn <andrew+netdev@lunn.ch>, Gerd Hoffmann <kraxel@redhat.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Shuah Khan <shuah@kernel.org>, netdev@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-kselftest@vger.kernel.org, sdf@fomichev.me, razor@blackwall.org, daniel@iogearbox.net, matttbe@kernel.org, skhawaja@google.com, dw@davidwei.uk, Joe Damato <joe@dama.to>, Bobby Eshleman <bobbyeshleman@meta.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH net-next v4 0/3] net: devmem: allow rx-buf-size > PAGE_SIZE per binding
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/PKR5WOSWRISIB6DOJHK26LLYCRGP6WTG/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Action: no action
X-Spamd-Result: default: False [3.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[163];
	R_DKIM_REJECT(1.00)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed),none];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[27];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:almasrymina@google.com,m:donald.hunter@gmail.com,m:kuba@kernel.org,m:davem@davemloft.net,m:edumazet@google.com,m:pabeni@redhat.com,m:horms@kernel.org,m:andrew+netdev@lunn.ch,m:kraxel@redhat.com,m:vivek.kasireddy@intel.com,m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:shuah@kernel.org,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linux-media@vger.kernel.org,m:linaro-mm-sig@lists.linaro.org,m:linux-kselftest@vger.kernel.org,m:sdf@fomichev.me,m:razor@blackwall.org,m:daniel@iogearbox.net,m:matttbe@kernel.org,m:skhawaja@google.com,m:dw@davidwei.uk,m:joe@dama.to,m:bobbyeshleman@meta.com,m:donaldhunter@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[bobbyeshleman@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bobbyeshleman@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,davemloft.net,google.com,redhat.com,lunn.ch,intel.com,linaro.org,amd.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,fomichev.me,blackwall.org,iogearbox.net,davidwei.uk,dama.to,meta.com];
	TAGGED_RCPT(0.00)[linaro-mm-sig,netdev];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DKIM_TRACE(0.00)[gmail.com:-];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:from_smtp,lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email,devvm29614.prn0.facebook.com:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5AD31757605

T24gVHVlLCBKdWwgMDcsIDIwMjYgYXQgMTI6MjQ6MjFQTSAtMDcwMCwgTWluYSBBbG1hc3J5IHdy
b3RlOg0KPiAoSSdtIGtpbmRhIHJldmlld2luZyB0aGlzIHZlcnkgbGF0ZSBoZXJlLiBTb21lIHN1
Z2dlc3Rpb25zL2NvbW1lbnRzDQo+IGJ1dCBmZWVsIGZyZWUgdG8gaWdub3JlIGlmIG5vdCB1c2Vm
dWwpLg0KPiANCj4gT24gV2VkLCBKdWwgMSwgMjAyNiBhdCAxMjoyMuKAr1BNIEJvYmJ5IEVzaGxl
bWFuIDxib2JieWVzaGxlbWFuQGdtYWlsLmNvbT4gd3JvdGU6DQo+ID4NCj4gPiBFdmVyeSBkZXZt
ZW0gZG1hYnVmIGJpbmRpbmcgaGFuZHMgdGhlIHBhZ2VfcG9vbCBQQUdFX1NJWkUgbmlvdnMgdG9k
YXkuDQo+ID4gT24gTklDcyB0aGF0IGNvbnN1bWUgb25lIGRlc2NyaXB0b3IgcGVyIG5ldG1lbSwg
dGhpcyBjYXBzIGEgc2luZ2xlIFJYDQo+ID4gZGVzY3JpcHRvciBhdCBQQUdFX1NJWkUgYW5kIGJ1
cm5zIENQVSBvbiBidWZmZXIgY2h1cm4uDQo+ID4NCj4gPiBJbiB0aGlzIHNlcmllcywgd2UgYWRk
IGEgYmluZC10aW1lIG5ldGxpbmsgYXR0cmlidXRlLA0KPiA+IE5FVERFVl9BX0RNQUJVRl9SWF9C
VUZfU0laRSwgdGhhdCBsZXRzIHVzZXJzcGFjZSByZXF1ZXN0IGEgbGFyZ2VyIG5pb3Ygc2l6ZQ0K
PiA+IChwb3dlciBvZiB0d28gPj0gUEFHRV9TSVpFKS4NCj4gDQo+IEZXSVcgd2UgbWF5IGJlIGFi
bGUgdG8gc3VwcG9ydCBhcmJpdHJhcnkgc2l6ZXMgd2l0aCBkZXZtZW0uIEJlY2F1c2UNCj4gdGhl
IGdlbnBvb2wgc3VwcG9ydHMgYnl0ZS1hbGlnbmVkIGFsbG9jYXRpb25zIEFGQUlSLiBBbHNvIHRo
ZQ0KPiBkbWEtbWFwcGluZyBoYXBwZW5zIHdpdGggdGhlIGRtYS1idWYgc2l6ZSwgc28gdGhlIGFj
dHVhbCBuaW92IHNpemUNCj4gZG9lc24ndCBtYXR0ZXIuIFRoZSBvbmx5IHRoaW5nIEkgY2FuIHRo
aW5rIG9mZiB3aGljaCBtYXkgbm90IGJlDQo+IGZsZXhpYmxlIHRvIGFyYml0cmFyeSBzaXplcyBp
cyB0aGUgZHJpdmVyIGl0c2VsZi4gSURLIHdoYXQgaGFwcGVucyBpZg0KPiB5b3UgYXNrIHRoZSBk
cml2ZXIgdG8gZG1hIGludG8gYSBidWZmZXIgdGhhdCBpcyBmcmFnIHNpemUgNTAyMyBvcg0KPiBz
b21ldGhpbmcgbGlrZSB0aGF0Lg0KPiANCj4gQnV0IHRoYXQgaXMgc29tZXRoaW5nIHRoYXQgY2Fu
IGJlIHJlbGF4ZWQgaW4gdGhlIGZ1dHVyZS4NCg0KDQpJIHRoaW5rIGF0IGxlYXN0IGZvciBtbHg1
IHRoZXJlIHdvdWxkIGJlIHNvbWUgaXNzdWVzLCBhcyBpdCBzcGxpdHMgdGhlDQptZW1vcnkgcmVn
aW9uIGludG8gZml4ZWQtc2l6ZSBzdHJpZGVzICgyNTZCKSwgc28gSSdkIGV4cGVjdCBpdCBuZWVk
cyB0bw0KYXQgbGVhc3QgYmUgZGl2aXNpYmxlIGJ5IHRoZSBzdHJpZGUgbGVuZ3RoLiBUaGUgbWx4
NSBkcml2ZXIgc2VlbXMgdG8NCmd1YXJkIGFnYWluc3QgdGhpcyBieSBjaGVja2luZyBmb3Igc3og
PiBQQUdFX1NJWkUgJiYgaXNfcG93ZXJfb2ZfMi4NCg0KPiANCj4gPiBEcml2ZXJzIG11c3Qgb3B0
IGluIHZpYQ0KPiA+IHF1ZXVlX21nbXRfb3BzLlFDRkdfUlhfUEFHRV9TSVpFLg0KPiA+DQo+IA0K
PiBuaXQgdGhhdCBwcm9iYWJseSBkb2Vzbid0IG1hdHRlcjogLi4uUUNGR19SWF9ORVRNRU1fU0la
RSwgb3INCj4gKC4uLk5JT1ZfU0laRSkuIFRoaXMgZG9lc24ndCBhY3R1YWxseSB3b3JrIHdpdGgg
cGFnZXMsIHJpZ2h0Pw0KDQpJIHByb2JhYmx5IGNvdWxkIGhhdmUgd29yZGVkIHRoaXMgaW4gdGhl
IG1lc3NhZ2UgbW9yZSBjbGVhcmx5LCBidXQgdGhpcw0KbmFtZSBpcyBub3QgaW50cm9kdWNlZCBi
eSB0aGlzIHNlcmllcywgc28gd2UgcHJvYmFibHkgY2FuJ3QgZ2V0IGF3YXkNCndpdGggY2hhbmdp
bmcgaXQuDQoNCj4gDQo+IElmIHlvdSBkZWNpZGUgdG8gZXh0ZW5kIHRvIGFyYnJhcnkgc2l6ZXMs
IEkgd291bGQgYWRkIHRvIHRoZQ0KPiBxdWV1ZV9tZ210IG9wcyBzdXBwb3J0c19uZXRtZW1fc2l6
ZShzaXplX3Qgc2l6ZSkgZnVuY3Rpb24sIGFuZCBsZXQgdGhlDQo+IGRyaXZlciBlbmZvcmNlICJp
dCBoYXMgdG8gYmUgcG93ZXIgb2YgMiIgaWYgaXQgbmVlZHMgdG8uIEFGQUlDVCBjb3JlDQo+IGRv
ZXNuJ3QgbmVlZCB0by4NCj4gDQo+ID4gU2VsZnRlc3RzIHVzZSB1ZG1hYnVmLCBidXQgdWRtYWJ1
ZiBzZ3RhYmxlcyB3ZXJlIHByZXZpb3VzbHkgaGFyZGNvZGVkIHRvDQo+ID4gUEFHRV9TSVpFLiBU
aGlzIHNlcmllcyBtb2RpZmllcyB1ZG1hYnVmIHRvIHJlc3BlY3QgZm9saW8gc2l6ZXMgaW4gaXRz
IGV4cG9ydGVkDQo+ID4gc2d0YWJsZS4gVGhlIHJlc3VsdCBpcyB0aGF0IHdoZW4gYmFja2luZyB1
ZG1hYnVmIHdpdGggTUZEX0hVR0VUTEIgMk1CIHBhZ2VzLA0KPiA+IHRoZSBzZ3RhYmxlIGlzIHBv
cHVsYXRlZCB3aXRoIDJNQiBlbnRyaWVzLCBhbGxvd2luZyBkZXZtZW0ncyBnZW5fcG9vbCB0byBj
YXJ2ZQ0KPiA+IG91dCBsYXJnZSAoZWcuIDY0SykgbmlvdnMuDQo+ID4NCj4gPiBNZWFzdXJlbWVu
dHMNCj4gPiAtLS0tLS0tLS0tLS0NCj4gPg0KPiA+IFNldHVwOiBrcGVyZiBkZXZtZW0gUlgvVFgg
Y3VkYSwgNCBmbG93cywgNjQgTUIgbWVzc2FnZXMsIDYwcywgZGN0Y3AsDQo+ID4gbnVtLXJ4LXF1
ZXVlcz00LCBkbWFidWYtcngvdHgtc2l6ZS1tYj0yMDQ4LCAxMCBydW5zIHBlciBuaW92IHNpemUs
DQo+ID4gbWx4NS4NCj4gPg0KPiA+ICAgIG5pb3YgICAgICAgUlggZGV2IEdicHMgICBSWCBmbG93
IGF2ZyBHYnBzICAgICAgICAgYXBwIHN5cyAlDQo+ID4gICAtLS0tLSAgLS0tLS0tLS0tLS0tLS0t
LSAgLS0tLS0tLS0tLS0tLS0tLS0gIC0tLS0tLS0tLS0tLS0tLS0NCj4gPiAgICAgIDRLICAzMDAu
NjMgKy8tIDUzLjIxICAgIDc1LjE2ICsvLSAxMy4zMCAgIDU0LjE1ICsvLSAxMC4yMw0KPiA+ICAg
ICAxNksgIDMyMS4zNSArLy0gMjguMjAgICAgODAuMzQgKy8tICA3LjA1ICAgNDEuMDUgKy8tICA4
Ljg3DQo+ID4gICAgIDMySyAgMzQ3LjYzICsvLSAgMi4yMCAgICA4Ni45MSArLy0gIDAuNTUgICA0
NC41NCArLy0gIDMuNTENCj4gPiAgICAgNjRLICAzMzIuMTEgKy8tIDE0LjI2ICAgIDgzLjAzICsv
LSAgMy41NiAgIDM1LjQ3ICsvLSAgMy4xMQ0KPiA+DQo+ID4gUlggYXBwIHN5cyAlIGRyb3BzIH4x
OSUgZnJvbSA0SyB0byA2NEsuDQo+ID4NCj4gDQo+IEhhcmQgdG8gcmVhZCB0aGUgY29sdW1ucyBm
b3IgbWUgYnV0IHNlZW1zIGxpa2UgZ29vZCBwZXJmIGRhdGEuIERpZA0KPiBwZXJmb3JtYW5jZSBi
ZWNvbWUgd29yc2UgZnJvbSAzMksgdG8gNjRLPyBJIHdvbmRlciB3aHkuDQoNClRoZSBkcm9wIG9m
ZiBzdHJ1Y2sgbXkgZXllIHRvbywgYnV0IGRpZG4ndCBpbnZlc3RpZ2F0ZSBmdXJ0aGVyLiBHaXZl
bg0KdGhlIHdpZGUgc3RkZXYsIGl0IGFwcGVhcnMgdG8gbWUgbGlrZSB0aGUgdHJlbmQgaXMgcG9z
aXRpdmUgYnV0IHByb2JhYmx5DQpub3QgaHVnZS4gVGhlIGNwdSB1dGlsIGRlbHRhcywgb24gdGhl
IG90aGVyIGhhbmQsIGxvb2sgc3Ryb25nZXIgdG8gbWUuDQoNCj4gDQo+IEkgaGF2ZSBzb21lIGRl
dm1lbSBwZXJmb3JtYW5jZSBmaXhlcyB0aGF0IGFyZSB2ZXJ5IGNyaXRpY2FsIGZvciBvdXINCj4g
cHJvZHVjdGlvbiB0aGF0IEkgaGF2ZW4ndCBnb3R0ZW4gYXJvdW5kIHRvIHVwc3RyZWFtaW5nIHll
dC4gSSB3b25kZXINCj4gaWYgSSBjYW4gc2VuZCB0aGVtIHRvIHlvdSBmb3IgdXBzdHJlYW0gc3Vi
bWlzc2lvbi4gQXJlIHlvdSBwb3RlbnRpYWxseQ0KPiBpbnRlcmVzdGVkPw0KDQpEZWZpbml0ZWx5
IGludGVyZXN0ZWQhDQoNCj4gDQo+IC0tIA0KPiBUaGFua3MsDQo+IE1pbmENCg0KDQpUaGFua3Mg
TWluYS4NCg0KQmVzdCwNCkJvYmJ5DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2ln
QGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8t
bW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
