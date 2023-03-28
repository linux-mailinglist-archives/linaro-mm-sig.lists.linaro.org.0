Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 952DF6CCD99
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 29 Mar 2023 00:41:06 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 774B043CC1
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 28 Mar 2023 22:41:05 +0000 (UTC)
Received: from mail-ot1-f47.google.com (mail-ot1-f47.google.com [209.85.210.47])
	by lists.linaro.org (Postfix) with ESMTPS id 6575F3EE12
	for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Mar 2023 22:40:54 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=pPT5I+iR;
	spf=pass (lists.linaro.org: domain of robdclark@gmail.com designates 209.85.210.47 as permitted sender) smtp.mailfrom=robdclark@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-ot1-f47.google.com with SMTP id k14-20020a9d700e000000b0069faa923e7eso7248423otj.10
        for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Mar 2023 15:40:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680043254;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Qxcd4sgme6Bo4SoxKNObgmmhx9Tez4jxepBqb6+X46c=;
        b=pPT5I+iR3/kgp15tjer1n/wfCoyDWOUHPnYpJk7/ceAltSLy/K22qkY4wVDjD8wQmr
         IP0kWDoA3b3DQIubfB+Kmq5cK0Tlv+qinDctG4lBb3xh0wONcdmHNv5HdDdHXYyqAset
         cJoTrYZfYCOKj8zmJiTnzkdAYtWnVI7VENYlobCgtSuWe8O99FcDms8LvkClsAyH11EY
         PynrVCJ3KP9xT6HGwFNJ7TRtMT/O34Tz0LUeIrq3LMrkAbunfnHbJn9SnMrw4nob2pzh
         1USUwtRpCiMmW922sxBbVjQdysBcYvPGjrOKvEztnyNBcCR40xLfSJ0c+4NJNTNyzak+
         e1IA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680043254;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Qxcd4sgme6Bo4SoxKNObgmmhx9Tez4jxepBqb6+X46c=;
        b=gfaSE0UM/h3jZew8cxsDfwWDSf2plAHsRqiHsujuVDskOHScIojX9ErqLJ/wLLMeju
         P4cYE5MNRagncEZYOUSbi17pMElqiIwm0rypmYUq4Qs2VcqXYEL3+hW2rYT2Dlb+ko5p
         JRC9ay00iisYP19J3EnS29Q94uN+ClWEO7y5N6LTBSHqFTc0qX2+1SAzdnajPvQP/+6M
         VXbbAfRyKdPHvfTw8LN05evbF6GButUy28QIVDovWloFE7HyDxhHDvFN4tSNUmeGvcXd
         T1fPgWz0DFDZ6DbeDzX7xVv3NH8KQ8F2PseeVfMw6mRDApJsptT7kbfJezE247mBJnak
         RrPg==
X-Gm-Message-State: AO0yUKVj7olgpV+75gm0RkVn2WlfT8Y47V8zYuCnQ7c5ZZOQGs3Pks4r
	oXmYFUI3Wa+S3rdwFf3PrszCXx+sdbyFjjJNFqY=
X-Google-Smtp-Source: AK7set9YaXISiZo+AYZxO37Flyf8eqfzhVjUjkODBzLXO9RrzD+PXnI3VxGGnkTALqoRjpyrwkSENMLsMB+Rff6O+cQ=
X-Received: by 2002:a9d:7301:0:b0:69f:abec:b057 with SMTP id
 e1-20020a9d7301000000b0069fabecb057mr5656784otk.7.1680043253802; Tue, 28 Mar
 2023 15:40:53 -0700 (PDT)
MIME-Version: 1.0
References: <CAF6AEGvoP9_FERdL6U8S2O-BVt-oAUgAytbE6RvygsoAOwOHvw@mail.gmail.com>
 <ZCMhhToEdWVAEtBh@phenom.ffwll.local>
In-Reply-To: <ZCMhhToEdWVAEtBh@phenom.ffwll.local>
From: Rob Clark <robdclark@gmail.com>
Date: Tue, 28 Mar 2023 15:40:42 -0700
Message-ID: <CAF6AEGu6gyPeo9kwxEYVHb9L=iPpitd6E3g3dXv_=okviSS6HQ@mail.gmail.com>
To: Daniel Vetter <daniel@ffwll.ch>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 6575F3EE12
X-Spamd-Bar: --------
X-Spamd-Result: default: False [-8.10 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.210.47:from];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ffwll.ch:url,ffwll.ch:email,gitlab.freedesktop.org:url];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_ONE(0.00)[1];
	FROM_EQ_ENVFROM(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TO_DN_ALL(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,lists.freedesktop.org,linux.intel.com,lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_FIVE(0.00)[5];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[]
Message-ID-Hash: 3XDSZ4GA6RDZ4G2QQ5B27G6ZM2SR7DSR
X-Message-ID-Hash: 3XDSZ4GA6RDZ4G2QQ5B27G6ZM2SR7DSR
X-MailFrom: robdclark@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel <dri-devel@lists.freedesktop.org>, Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [pull] drm: dma-fence-deadline-core for v6.4
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3XDSZ4GA6RDZ4G2QQ5B27G6ZM2SR7DSR/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVHVlLCBNYXIgMjgsIDIwMjMgYXQgMTA6MTnigK9BTSBEYW5pZWwgVmV0dGVyIDxkYW5pZWxA
ZmZ3bGwuY2g+IHdyb3RlOg0KPg0KPiBPbiBTYXQsIE1hciAyNSwgMjAyMyBhdCAxMToyNDo1NkFN
IC0wNzAwLCBSb2IgQ2xhcmsgd3JvdGU6DQo+ID4gSGkgRGF2ZSBhbmQgRGFuaWVsLA0KPiA+DQo+
ID4gSGVyZSBpcyB0aGUgc2VyaWVzIGZvciBkbWEtZmVuY2UgZGVhZGxpbmUgaGludCwgd2l0aG91
dCBkcml2ZXINCj4gPiBzcGVjaWZpYyBwYXRjaGVzLCB3aXRoIHRoZSBpbnRlbnQgdGhhdCBpdCBj
YW4gYmUgbWVyZ2VkIGludG8gZHJtLW5leHQNCj4gPiBhcyB3ZWxsIGFzIC1kcml2ZXIgbmV4dCB0
cmVlcyB0byBlbmFibGUgbGFuZGluZyBkcml2ZXIgc3BlY2lmaWMNCj4gPiBzdXBwb3J0IHRocm91
Z2ggdGhlaXIgY29ycmVzcG9uZGluZyAtbmV4dCB0cmVlcy4NCj4gPg0KPiA+IFRoZSBmb2xsb3dp
bmcgY2hhbmdlcyBzaW5jZSBjb21taXQgZWVhYzhlZGUxNzU1NzY4MDg1NTAzMWM2ZjMwNWVjZTIz
NzhhZjMyNjoNCj4gPg0KPiA+ICAgTGludXggNi4zLXJjMiAoMjAyMy0wMy0xMiAxNjozNjo0NCAt
MDcwMCkNCj4gPg0KPiA+IGFyZSBhdmFpbGFibGUgaW4gdGhlIEdpdCByZXBvc2l0b3J5IGF0Og0K
PiA+DQo+ID4gICBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL21zbS5naXQgdGFn
cy9kbWEtZmVuY2UtZGVhZGxpbmUtY29yZQ0KPiA+DQo+ID4gZm9yIHlvdSB0byBmZXRjaCBjaGFu
Z2VzIHVwIHRvIDBiY2M4ZjUyYThkOWQxZjljZDVhZjdmODhjNjU5OWE4OWU2NDI4NGE6DQo+ID4N
Cj4gPiAgIGRybS9hdG9taWMtaGVscGVyOiBTZXQgZmVuY2UgZGVhZGxpbmUgZm9yIHZibGFuayAo
MjAyMy0wMy0yNSAxMDo1NTowOCAtMDcwMCkNCj4NCj4gT2sgYXBwYXJlbnRseSB0aGVyZSdzIG9u
bHkgaWd0cyBmb3IgdGhlIHN5bmNfZmlsZSB1YWJpIGFuZCB0aGUgb25seSBvbmx5DQo+IHVzZXJz
cGFjZSBmb3Igc3luY29iaiBpcyB0aGUgbWVzYSBtciB0aGF0IGlzIHN0aWxsIHVuZGVyIGRpc2N1
c3Npb24gOi0vDQo+DQo+IFllcyBJIGtub3cgdGhlcmUncyBhIGNsZWFybHkgZXN0YWJsaXNoZWQg
bmVlZCBmb3Igc29tZXRoaW5nIGxpa2UgdGhpcywgYnV0DQo+IGFsc28gaW4gZHJtIHdlIGRvbid0
IG1lcmdlIGNvbmplY3R1cmVkIHVhYmkuIEVzcGVjaWFsbHkgd2l0aCB0cmlja3kgc3R1ZmYNCj4g
dGhhdCdzIG1lYW50IHRvIGltcHJvdmUgYmVzdCBlZmZvcnQgcGVyZm9ybWFuY2UvdHVuaW5nIHBy
b2JsZW1zLCB3aGVyZSB5b3UNCj4gcmVhbGx5IGhhdmUgdG8gYmVuY2htYXJrIHRoZSBlbnRpcmUg
dGhpbmcgYW5kIG1ha2Ugc3VyZSB5b3UgZGlkbid0IHNjcmV3DQo+IHVwIHNvbWUgaW50ZXJhY3Rp
b24uDQo+DQo+IFRvIG1ha2Ugc3VyZSB0aGlzIGlzbid0IHN0dWNrIGFub3RoZXIgZnVsbCBjeWNs
ZSwgaXMgdGhlcmUgYSB3YXkgdG8gd2l0dGxlDQo+IHRoaXMganVzdCBkb3duIHRvIHRoZSBrbXMg
YXRvbWljIGZsaXAgYm9vc3RpbmcgcGFydHM/IFRoYXQgd2F5IHdlIGNvdWxkIGF0DQo+IGxlYXN0
IHN0YXJ0IGxhbmRpbmcgdGhlIGNvcmUmZHJpdmVyIGJpdHMgLi4uDQoNCkkgd2VudCBhaGVhZCBh
bmQgc2VudCBhIFBSIHdpdGhvdXQgdGhlIHVhcGkgYml0cy4uIElNSE8gSSBkb24ndCB0aGluaw0K
dGhhdCBhbnkgZnVydGhlciBkaXNjdXNzaW9uIG9uIHRoZSBNUiB3b3VsZCBjaGFuZ2UgdGhlIHVh
cGksIGJ1dCBJDQpndWVzcyBpdCBkb2Vzbid0IGh1cnQgZ2l2aW5nIGl0IHNvbWUgZXh0cmEgZGF5
cyB3aGlsZSB1bmJsb2NraW5nIHRoZQ0KZHJpdmVyIHBhcnRzLiAgSSBzdGlsbCBraW5kYSBob3Bl
IHRoYXQgd2UgY2FuIGxhbmQgYXQgbGVhc3QgdGhlDQpzeW5jb2JqIFVBUEkgdGhpcyBjeWNsZS4N
Cg0KQlIsDQotUg0KDQo+IC1EYW5pZWwNCj4NCj4gPg0KPiA+IC0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0NCj4gPiBJbW11dGFi
bGUgYnJhbmNoIHdpdGggZG1hLWZlbmNlIGRlYWRsaW5lIGhpbnQgc3VwcG9ydCBiZXR3ZWVuIGRy
bS1uZXh0DQo+ID4gYW5kIGRyaXZlciAtbmV4dCB0cmVlcy4NCj4gPg0KPiA+IC0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0NCj4g
PiBSb2IgQ2xhcmsgKDExKToNCj4gPiAgICAgICBkbWEtYnVmL2RtYS1mZW5jZTogQWRkIGRlYWRs
aW5lIGF3YXJlbmVzcw0KPiA+ICAgICAgIGRtYS1idWYvZmVuY2UtYXJyYXk6IEFkZCBmZW5jZSBk
ZWFkbGluZSBzdXBwb3J0DQo+ID4gICAgICAgZG1hLWJ1Zi9mZW5jZS1jaGFpbjogQWRkIGZlbmNl
IGRlYWRsaW5lIHN1cHBvcnQNCj4gPiAgICAgICBkbWEtYnVmL2RtYS1yZXN2OiBBZGQgYSB3YXkg
dG8gc2V0IGZlbmNlIGRlYWRsaW5lDQo+ID4gICAgICAgZG1hLWJ1Zi9zeW5jX2ZpbGU6IFN1cmZh
Y2Ugc3luYy1maWxlIHVBQkkNCj4gPiAgICAgICBkbWEtYnVmL3N5bmNfZmlsZTogQWRkIFNFVF9E
RUFETElORSBpb2N0bA0KPiA+ICAgICAgIGRtYS1idWYvc3dfc3luYzogQWRkIGZlbmNlIGRlYWRs
aW5lIHN1cHBvcnQNCj4gPiAgICAgICBkcm0vc2NoZWR1bGVyOiBBZGQgZmVuY2UgZGVhZGxpbmUg
c3VwcG9ydA0KPiA+ICAgICAgIGRybS9zeW5jb2JqOiBBZGQgZGVhZGxpbmUgc3VwcG9ydCBmb3Ig
c3luY29iaiB3YWl0cw0KPiA+ICAgICAgIGRybS92Ymxhbms6IEFkZCBoZWxwZXIgdG8gZ2V0IG5l
eHQgdmJsYW5rIHRpbWUNCj4gPiAgICAgICBkcm0vYXRvbWljLWhlbHBlcjogU2V0IGZlbmNlIGRl
YWRsaW5lIGZvciB2YmxhbmsNCj4gPg0KPiA+ICBEb2N1bWVudGF0aW9uL2RyaXZlci1hcGkvZG1h
LWJ1Zi5yc3QgICAgfCAxNiArKysrKystDQo+ID4gIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2Ut
YXJyYXkuYyAgICAgICB8IDExICsrKysrDQo+ID4gIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2Ut
Y2hhaW4uYyAgICAgICB8IDEyICsrKysrDQo+ID4gIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2Uu
YyAgICAgICAgICAgICB8IDYwICsrKysrKysrKysrKysrKysrKysrKysrKw0KPiA+ICBkcml2ZXJz
L2RtYS1idWYvZG1hLXJlc3YuYyAgICAgICAgICAgICAgfCAyMiArKysrKysrKysNCj4gPiAgZHJp
dmVycy9kbWEtYnVmL3N3X3N5bmMuYyAgICAgICAgICAgICAgIHwgODEgKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrDQo+ID4gIGRyaXZlcnMvZG1hLWJ1Zi9zeW5jX2RlYnVnLmggICAg
ICAgICAgICB8ICAyICsNCj4gPiAgZHJpdmVycy9kbWEtYnVmL3N5bmNfZmlsZS5jICAgICAgICAg
ICAgIHwgMTkgKysrKysrKysNCj4gPiAgZHJpdmVycy9ncHUvZHJtL2RybV9hdG9taWNfaGVscGVy
LmMgICAgIHwgMzcgKysrKysrKysrKysrKysrDQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9kcm1fc3lu
Y29iai5jICAgICAgICAgICB8IDY0ICsrKysrKysrKysrKysrKysrKysrLS0tLS0tDQo+ID4gIGRy
aXZlcnMvZ3B1L2RybS9kcm1fdmJsYW5rLmMgICAgICAgICAgICB8IDUzICsrKysrKysrKysrKysr
KysrLS0tLQ0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vc2NoZWR1bGVyL3NjaGVkX2ZlbmNlLmMgfCA0
NiArKysrKysrKysrKysrKysrKysrDQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9zY2hlZHVsZXIvc2No
ZWRfbWFpbi5jICB8ICAyICstDQo+ID4gIGluY2x1ZGUvZHJtL2RybV92YmxhbmsuaCAgICAgICAg
ICAgICAgICB8ICAxICsNCj4gPiAgaW5jbHVkZS9kcm0vZ3B1X3NjaGVkdWxlci5oICAgICAgICAg
ICAgIHwgMTcgKysrKysrKw0KPiA+ICBpbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS5oICAgICAgICAg
ICAgICAgfCAyMiArKysrKysrKysNCj4gPiAgaW5jbHVkZS9saW51eC9kbWEtcmVzdi5oICAgICAg
ICAgICAgICAgIHwgIDIgKw0KPiA+ICBpbmNsdWRlL3VhcGkvZHJtL2RybS5oICAgICAgICAgICAg
ICAgICAgfCAxNyArKysrKysrDQo+ID4gIGluY2x1ZGUvdWFwaS9saW51eC9zeW5jX2ZpbGUuaCAg
ICAgICAgICB8IDU5ICsrKysrKysrKysrKysrKy0tLS0tLS0tLQ0KPiA+ICAxOSBmaWxlcyBjaGFu
Z2VkLCA0OTYgaW5zZXJ0aW9ucygrKSwgNDcgZGVsZXRpb25zKC0pDQo+DQo+IC0tDQo+IERhbmll
bCBWZXR0ZXINCj4gU29mdHdhcmUgRW5naW5lZXIsIEludGVsIENvcnBvcmF0aW9uDQo+IGh0dHA6
Ly9ibG9nLmZmd2xsLmNoDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3Rz
LmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2ln
LWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
