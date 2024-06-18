Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id F0D9890D91C
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Jun 2024 18:24:09 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E794443F84
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Jun 2024 16:24:08 +0000 (UTC)
Received: from mail-oo1-f45.google.com (mail-oo1-f45.google.com [209.85.161.45])
	by lists.linaro.org (Postfix) with ESMTPS id 4406643E5E
	for <linaro-mm-sig@lists.linaro.org>; Tue, 18 Jun 2024 16:24:05 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ndufresne-ca.20230601.gappssmtp.com header.s=20230601 header.b=muT26UxA;
	spf=none (lists.linaro.org: domain of nicolas@ndufresne.ca has no SPF policy when checking 209.85.161.45) smtp.mailfrom=nicolas@ndufresne.ca;
	dmarc=none
Received: by mail-oo1-f45.google.com with SMTP id 006d021491bc7-5b970e90ab8so3213391eaf.3
        for <linaro-mm-sig@lists.linaro.org>; Tue, 18 Jun 2024 09:24:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20230601.gappssmtp.com; s=20230601; t=1718727844; x=1719332644; darn=lists.linaro.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=y2L36ZkKRa2ldLn+cK6LBceBfGVZn+/Ml/80DU+Rz8Y=;
        b=muT26UxAgl176EicWWVMopGyjqlqBa+MLYUO093tWTNEaksEq24N2ZOrDDq8mP035Y
         IGRvwI+bLuwL01WwZDJmRn7CDmp/6HDlyUy0BWhVLDO9ITtuU9e/vyMO+3/J9L6WiPA3
         7dPzkF2Z8GOfJ6HdXPrUMkgrBADSKHQHD3p4A4fGHDCEF7E8RNQZssRtUapaDnHccu1G
         a7DRt7OzW4kTWKvAsoH8GLS/3jMLD8x9UN6CFLcNPLPf6tymMJNCKZqv0GFrFeAPAvYJ
         YwhBuOKOMJ9w9fDrrWPNu36cYS+7KKaIyN3LnXl5trxgOdH5zgdeuLy8To6u7PUsxl0x
         /dOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718727844; x=1719332644;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=y2L36ZkKRa2ldLn+cK6LBceBfGVZn+/Ml/80DU+Rz8Y=;
        b=vq33G6MKRn4YDtc99MvRGOq8q5/1OfKFQNmQr/4rkonVMZ0W7u9N7EneVFRtEQF9PR
         4akNVdrOYQ1MqhNmprkK9uWdiD2I2FWnihiV9J0lyG/YEUWXULAlUYdTUZwmA2OMFMvV
         iStz0nj4jBZmoWA6OsBUUkNpT9G9pDTlnZGSl3DFs+U5bxr7DZ2cg6zV8KhYZ6+D7p37
         Z9z7lbUc6ldOnSr0vYvPZN7+fPd2e6SWRlFOsMlxSPm9X+nTE9Hu9HzI90RFQs47XjU2
         b9AXy3u9V9J96OcI8ig4wmgQnD3lTmbz0qbIHSwHdIyhYA5XPKWqd877ReT6icCBFl+F
         nGpw==
X-Forwarded-Encrypted: i=1; AJvYcCVEISiamyxsWKHhBQwXoWqQXxeIRiIrRnVzmoUuZ0/2qODDjG9VUOlFi6S5SM5q9/q4VLATeGT5HsonzTz+koqSVf/pyWhYB/yYgr6HWlQ=
X-Gm-Message-State: AOJu0YyR1lf9rJUMIEp/kchP4hINZojAL8UPoYApajZIcRY+wjQ6uhim
	GbDp9GqA4MOIAsxGDfGTEEdz3Cp43MJAy3KdjQ5VPoawnjDgnBzsflfLl6p5tU0=
X-Google-Smtp-Source: AGHT+IFJbrVxZSy5MW1kEWYhiDGt9QvD0Fml+npOhQgHsfa3dm06eYcugngrvjSxbWiA5O9MHgS/Zg==
X-Received: by 2002:a05:6359:5fa9:b0:1a0:d4b4:5eb5 with SMTP id e5c5f4694b2df-1a1fd59877dmr34733855d.28.1718727844503;
        Tue, 18 Jun 2024 09:24:04 -0700 (PDT)
Received: from nicolas-tpx395.lan ([2606:6d00:17:5fb9::7a9])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-798abe279c0sm532234285a.110.2024.06.18.09.24.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Jun 2024 09:24:04 -0700 (PDT)
Message-ID: <036bf0d7f657cae444d20ea6d279b47e3bf0164e.camel@ndufresne.ca>
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Tomasz Figa <tfiga@chromium.org>, TaoJiang <tao.jiang_2@nxp.com>
Date: Tue, 18 Jun 2024 12:24:03 -0400
In-Reply-To: <CAAFQd5B_RTHsMwMdD59RAAyFne_0Ok_A4ExdkVOgi=G6-UGfRQ@mail.gmail.com>
References: <20240618073004.3420436-1-tao.jiang_2@nxp.com>
	 <CAAFQd5B_RTHsMwMdD59RAAyFne_0Ok_A4ExdkVOgi=G6-UGfRQ@mail.gmail.com>
User-Agent: Evolution 3.52.2 (3.52.2-1.fc40) 
MIME-Version: 1.0
X-Rspamd-Queue-Id: 4406643E5E
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.90 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_ALLOW(-0.20)[ndufresne-ca.20230601.gappssmtp.com:s=20230601];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.161.45:from];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_TLS_LAST(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	DMARC_NA(0.00)[ndufresne.ca];
	FREEMAIL_CC(0.00)[kernel.org,xs4all.nl,pengutronix.de,gmail.com,nxp.com,oss.nxp.com,lists.linux.dev,vger.kernel.org,samsung.com,linaro.org,amd.com,lists.freedesktop.org,lists.linaro.org];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[ndufresne-ca.20230601.gappssmtp.com:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	DNSWL_BLOCKED(0.00)[2606:6d00:17:5fb9::7a9:received,209.85.161.45:from];
	NEURAL_HAM(-0.00)[-1.000];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_RCPT(0.00)[dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: GPLADBBWSCMEW4L7J47JUTQLAYDTJZ3Z
X-Message-ID-Hash: GPLADBBWSCMEW4L7J47JUTQLAYDTJZ3Z
X-MailFrom: nicolas@ndufresne.ca
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: mchehab@kernel.org, hverkuil-cisco@xs4all.nl, shawnguo@kernel.org, robh+dt@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com, linux-imx@nxp.com, xiahong.bao@nxp.com, eagle.zhou@nxp.com, ming.qian@oss.nxp.com, imx@lists.linux.dev, linux-media@vger.kernel.org, linux-kernel@vger.kernel.org, sumit.semwal@linaro.org, christian.koenig@amd.com, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Ming Qian <ming.qian@nxp.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] media: videobuf2: sync caches for dmabuf memory
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/GPLADBBWSCMEW4L7J47JUTQLAYDTJZ3Z/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

TGUgbWFyZGkgMTgganVpbiAyMDI0IMOgIDE2OjQ3ICswOTAwLCBUb21hc3ogRmlnYSBhIMOpY3Jp
dMKgOg0KPiBIaSBUYW9KaWFuZywNCj4gDQo+IE9uIFR1ZSwgSnVuIDE4LCAyMDI0IGF0IDQ6MzDi
gK9QTSBUYW9KaWFuZyA8dGFvLmppYW5nXzJAbnhwLmNvbT4gd3JvdGU6DQo+ID4gDQo+ID4gRnJv
bTogTWluZyBRaWFuIDxtaW5nLnFpYW5AbnhwLmNvbT4NCj4gPiANCj4gPiBXaGVuIHRoZSBtZW1v
cnkgdHlwZSBpcyBWQjJfTUVNT1JZX0RNQUJVRiwgdGhlIHY0bDIgZGV2aWNlIGNhbid0IGtub3cN
Cj4gPiB3aGV0aGVyIHRoZSBkbWEgYnVmZmVyIGlzIGNvaGVyZW50IG9yIHN5bmNocm9uaXplZC4N
Cj4gPiANCj4gPiBUaGUgdmlkZW9idWYyLWNvcmUgd2lsbCBza2lwIGNhY2hlIHN5bmNzIGFzIGl0
IHRoaW5rIHRoZSBETUEgZXhwb3J0ZXINCj4gPiBzaG91bGQgdGFrZSBjYXJlIG9mIGNhY2hlIHN5
bmNzDQo+ID4gDQo+ID4gQnV0IGluIGZhY3QgaXQncyBsaWtlbHkgdGhhdCB0aGUgY2xpZW50IGRv
ZXNuJ3QNCj4gPiBzeW5jaHJvbml6ZSB0aGUgZG1hIGJ1ZiBiZWZvcmUgcWJ1ZigpIG9yIGFmdGVy
IGRxYnVmKCkuIGFuZCBpdCdzDQo+ID4gZGlmZmljdWx0IHRvIGZpbmQgdGhpcyB0eXBlIG9mIGVy
cm9yIGRpcmVjdGx5Lg0KPiA+IA0KPiA+IEkgdGhpbmsgaXQncyBoZWxwZnVsIHRoYXQgdmlkZW9i
dWYyLWNvcmUgY2FuIGNhbGwNCj4gPiBkbWFfYnVmX2VuZF9jcHVfYWNjZXNzKCkgYW5kIGRtYV9i
dWZfYmVnaW5fY3B1X2FjY2VzcygpIHRvIGhhbmRsZSB0aGUNCj4gPiBjYWNoZSBzeW5jcy4NCj4g
PiANCj4gPiBTaWduZWQtb2ZmLWJ5OiBNaW5nIFFpYW4gPG1pbmcucWlhbkBueHAuY29tPg0KPiA+
IFNpZ25lZC1vZmYtYnk6IFRhb0ppYW5nIDx0YW8uamlhbmdfMkBueHAuY29tPg0KPiA+IC0tLQ0K
PiA+ICAuLi4vbWVkaWEvY29tbW9uL3ZpZGVvYnVmMi92aWRlb2J1ZjItY29yZS5jICAgfCAyMiAr
KysrKysrKysrKysrKysrKysrDQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCAyMiBpbnNlcnRpb25zKCsp
DQo+ID4gDQo+IA0KPiBTb3JyeSwgdGhhdCBwYXRjaCBpcyBpbmNvcnJlY3QuIEkgYmVsaWV2ZSB5
b3UncmUgbWlzdW5kZXJzdGFuZGluZyB0aGUNCj4gd2F5IERNQS1idWYgYnVmZmVycyBzaG91bGQg
YmUgbWFuYWdlZCBpbiB0aGUgdXNlcnNwYWNlLiBJdCdzIHRoZQ0KPiB1c2Vyc3BhY2UgcmVzcG9u
c2liaWxpdHkgdG8gY2FsbCB0aGUgRE1BX0JVRl9JT0NUTF9TWU5DIGlvY3RsIFsxXSB0bw0KPiBz
aWduYWwgc3RhcnQgYW5kIGVuZCBvZiBDUFUgYWNjZXNzIHRvIHRoZSBrZXJuZWwgYW5kIGltcGx5
IG5lY2Vzc2FyeQ0KPiBjYWNoZSBzeW5jaHJvbml6YXRpb24uDQo+IA0KPiBbMV0gaHR0cHM6Ly9k
b2NzLmtlcm5lbC5vcmcvZHJpdmVyLWFwaS9kbWEtYnVmLmh0bWwjZG1hLWJ1ZmZlci1pb2N0bHMN
Cj4gDQo+IFNvLCByZWFsbHkgc29ycnksIGJ1dCBpdCdzIGEgTkFLLg0KDQoNCg0KVGhpcyBwYXRj
aCAqY291bGQqIG1ha2Ugc2Vuc2UgaWYgaXQgd2FzIGluc2lkZSBVVkMgRHJpdmVyIGFzIGFuIGV4
YW1wbGUsIGFzIHRoaXMNCmRyaXZlciBjYW4gaW1wb3J0IGRtYWJ1ZiwgdG8gQ1BVIG1lbWNweSwg
YW5kIGRvZXMgb21pdHMgdGhlIHJlcXVpcmVkIHN5bmMgY2FsbHMNCih1bmxlc3MgdGhhdCBnb3Qg
YWRkZWQgcmVjZW50bHksIEkgY2FuIGVhc2lseSBoYXZlIG1pc3NlZCBpdCkuDQoNCkJ1dCBnZW5l
cmFsbHkgc3BlYWtpbmcsIGJyYWNrZXRpbmcgYWxsIGRyaXZlciB3aXRoIENQVSBhY2Nlc3Mgc3lu
Y2hyb25pemF0aW9uDQpkb2VzIG5vdCBtYWtlIHNlbnNlIGluZGVlZCwgc28gSSBzZWNvbmQgdGhl
IHJlamVjdGlvbi4NCg0KTmljb2xhcw0KDQo+IA0KPiBCZXN0IHJlZ2FyZHMsDQo+IFRvbWFzeg0K
PiANCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRpYS9jb21tb24vdmlkZW9idWYyL3ZpZGVv
YnVmMi1jb3JlLmMgYi9kcml2ZXJzL21lZGlhL2NvbW1vbi92aWRlb2J1ZjIvdmlkZW9idWYyLWNv
cmUuYw0KPiA+IGluZGV4IDM1OGYxZmU0Mjk3NS4uNDczNGZmOWNmM2NlIDEwMDY0NA0KPiA+IC0t
LSBhL2RyaXZlcnMvbWVkaWEvY29tbW9uL3ZpZGVvYnVmMi92aWRlb2J1ZjItY29yZS5jDQo+ID4g
KysrIGIvZHJpdmVycy9tZWRpYS9jb21tb24vdmlkZW9idWYyL3ZpZGVvYnVmMi1jb3JlLmMNCj4g
PiBAQCAtMzQwLDYgKzM0MCwxNyBAQCBzdGF0aWMgdm9pZCBfX3ZiMl9idWZfbWVtX3ByZXBhcmUo
c3RydWN0IHZiMl9idWZmZXIgKnZiKQ0KPiA+ICAgICAgICAgdmItPnN5bmNlZCA9IDE7DQo+ID4g
ICAgICAgICBmb3IgKHBsYW5lID0gMDsgcGxhbmUgPCB2Yi0+bnVtX3BsYW5lczsgKytwbGFuZSkN
Cj4gPiAgICAgICAgICAgICAgICAgY2FsbF92b2lkX21lbW9wKHZiLCBwcmVwYXJlLCB2Yi0+cGxh
bmVzW3BsYW5lXS5tZW1fcHJpdik7DQo+ID4gKw0KPiA+ICsgICAgICAgaWYgKHZiLT5tZW1vcnkg
IT0gVkIyX01FTU9SWV9ETUFCVUYpDQo+ID4gKyAgICAgICAgICAgICAgIHJldHVybjsNCj4gPiAr
ICAgICAgIGZvciAocGxhbmUgPSAwOyBwbGFuZSA8IHZiLT5udW1fcGxhbmVzOyArK3BsYW5lKSB7
DQo+ID4gKyAgICAgICAgICAgICAgIHN0cnVjdCBkbWFfYnVmICpkYnVmID0gdmItPnBsYW5lc1tw
bGFuZV0uZGJ1ZjsNCj4gPiArDQo+ID4gKyAgICAgICAgICAgICAgIGlmICghZGJ1ZikNCj4gPiAr
ICAgICAgICAgICAgICAgICAgICAgICBjb250aW51ZTsNCj4gPiArDQo+ID4gKyAgICAgICAgICAg
ICAgIGRtYV9idWZfZW5kX2NwdV9hY2Nlc3MoZGJ1ZiwgdmItPnZiMl9xdWV1ZS0+ZG1hX2Rpcik7
DQo+ID4gKyAgICAgICB9DQo+ID4gIH0NCj4gPiANCj4gPiAgLyoNCj4gPiBAQCAtMzU2LDYgKzM2
NywxNyBAQCBzdGF0aWMgdm9pZCBfX3ZiMl9idWZfbWVtX2ZpbmlzaChzdHJ1Y3QgdmIyX2J1ZmZl
ciAqdmIpDQo+ID4gICAgICAgICB2Yi0+c3luY2VkID0gMDsNCj4gPiAgICAgICAgIGZvciAocGxh
bmUgPSAwOyBwbGFuZSA8IHZiLT5udW1fcGxhbmVzOyArK3BsYW5lKQ0KPiA+ICAgICAgICAgICAg
ICAgICBjYWxsX3ZvaWRfbWVtb3AodmIsIGZpbmlzaCwgdmItPnBsYW5lc1twbGFuZV0ubWVtX3By
aXYpOw0KPiA+ICsNCj4gPiArICAgICAgIGlmICh2Yi0+bWVtb3J5ICE9IFZCMl9NRU1PUllfRE1B
QlVGKQ0KPiA+ICsgICAgICAgICAgICAgICByZXR1cm47DQo+ID4gKyAgICAgICBmb3IgKHBsYW5l
ID0gMDsgcGxhbmUgPCB2Yi0+bnVtX3BsYW5lczsgKytwbGFuZSkgew0KPiA+ICsgICAgICAgICAg
ICAgICBzdHJ1Y3QgZG1hX2J1ZiAqZGJ1ZiA9IHZiLT5wbGFuZXNbcGxhbmVdLmRidWY7DQo+ID4g
Kw0KPiA+ICsgICAgICAgICAgICAgICBpZiAoIWRidWYpDQo+ID4gKyAgICAgICAgICAgICAgICAg
ICAgICAgY29udGludWU7DQo+ID4gKw0KPiA+ICsgICAgICAgICAgICAgICBkbWFfYnVmX2JlZ2lu
X2NwdV9hY2Nlc3MoZGJ1ZiwgdmItPnZiMl9xdWV1ZS0+ZG1hX2Rpcik7DQo+ID4gKyAgICAgICB9
DQo+ID4gIH0NCj4gPiANCj4gPiAgLyoNCj4gPiAtLQ0KPiA+IDIuNDMuMC1yYzENCj4gPiANCg0K
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1t
LXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVu
c3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5h
cm8ub3JnCg==
