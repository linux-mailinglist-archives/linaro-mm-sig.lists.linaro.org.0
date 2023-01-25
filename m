Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 24B7267BA0A
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 25 Jan 2023 19:59:56 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2C16D443DB
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 25 Jan 2023 18:59:55 +0000 (UTC)
Received: from mail-yw1-f179.google.com (mail-yw1-f179.google.com [209.85.128.179])
	by lists.linaro.org (Postfix) with ESMTPS id 868943E828
	for <linaro-mm-sig@lists.linaro.org>; Wed, 25 Jan 2023 18:59:37 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20210112 header.b=oW141Oho;
	spf=pass (lists.linaro.org: domain of jstultz@google.com designates 209.85.128.179 as permitted sender) smtp.mailfrom=jstultz@google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-yw1-f179.google.com with SMTP id 00721157ae682-4c24993965eso277193267b3.12
        for <linaro-mm-sig@lists.linaro.org>; Wed, 25 Jan 2023 10:59:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eLlms4Kx5vtQ9Fqt9wbpRXCgK+qb1Gc1PtzXNbXDWiQ=;
        b=oW141OhoLlhkN7P7P4m5FqxC/TEGDkgb/Ockie9M23a7TTIJgZvvdwy2Ca3/5yv0lq
         837pBESR0EJqT13sZWZr8pm0CaIIaWs3S/lqr4cMavpJEGm9XsQHi2XHfxN+MGX+UjV7
         YyLpw/2izmO88NzweP6HvSZz0mAh+wx/Jmc6BJKzvS2U8TPusH4yKNAvPGYLiGTrKR+I
         5o5LI1Lw65sklcBme440kz4uCTg8XYjKZAdBymMw3WaZE+TtnJdwbGv0c0vUbNQtXADp
         uTs65B/8qsRuqv+nKRcUfVkfO4HG0LVDSKTkM4uThP+XmDStcffdEO1KqpXSMYoKtAHX
         XItw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eLlms4Kx5vtQ9Fqt9wbpRXCgK+qb1Gc1PtzXNbXDWiQ=;
        b=WjSxiYAnkhWHVNg8tQ2lEj721tv7mxJtBWfb2qgb9A1OYVbB15mSHZS4EoTz388rvY
         81iRVsK8zAYMgCGtbuEXoyYj3dCYsfRKqCKvmiezA3OuVjZF40ptsnTl+6rZs0Gx9sa1
         Hxx6JOPlgL6aP0yfA5ulF+lYhcGBmLdKK5g0z1pyj78bj/l1Bu/eYsjvnVQBCcufpWzu
         hhL91snftrhg0BuoXYxmhmC4+YlksJiVsopq6vi1fQUb/ghT2lUcwXRCL+oYzuzJZiVP
         AY8i/NaInWru6NQ1xd9LTgUlPOhxxiaMfReztfMTB4bQx39uoKmxx6eU6Qwhet12wH6K
         mnpw==
X-Gm-Message-State: AFqh2kpojMQvK8tHfBUPtWayI31j/V4oYR7FHrjyiAOLqq7C+0kvXkam
	Yp5GOVmFTRRcFnHDOxd/cL9IRhj0cZU+sBG9RwBn
X-Google-Smtp-Source: AMrXdXuiYoFGbypVm5Yp+UoATXO7zfbhtqwEeCvO/6KX5uo/itZBEBOcQqjtb/5xvWU2ArNv/Sz81iQlWcbFUcxO5lg=
X-Received: by 2002:a0d:dd06:0:b0:4ff:774b:80dd with SMTP id
 g6-20020a0ddd06000000b004ff774b80ddmr2049749ywe.14.1674673176939; Wed, 25 Jan
 2023 10:59:36 -0800 (PST)
MIME-Version: 1.0
References: <20230123123756.401692-1-christian.koenig@amd.com>
 <Y86R3vQX+vW0+oxw@pendragon.ideasonboard.com> <1f4a1a5c-e0d5-7f0e-353c-daa89f1369ea@amd.com>
 <CANDhNCoVkq4pQJvtgmvJJe=68ZoQOdjYFkbGG-PXVujX1py4aw@mail.gmail.com> <33f87d88-b05d-e524-54fb-d5fd2f676217@amd.com>
In-Reply-To: <33f87d88-b05d-e524-54fb-d5fd2f676217@amd.com>
From: John Stultz <jstultz@google.com>
Date: Wed, 25 Jan 2023 10:59:25 -0800
Message-ID: <CANDhNCqiP1cF2j-A_brM5kSh7je6r3MK5534YaHBYkVsNjLtWQ@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 868943E828
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_DKIM_ALLOW(-0.20)[google.com:s=20210112];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	FROM_EQ_ENVFROM(0.00)[];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[ideasonboard.com,pengutronix.de,ndufresne.ca,gmail.com,linaro.org,ffwll.ch,chromium.org,redhat.com,xs4all.nl,lists.freedesktop.org,lists.linaro.org,vger.kernel.org,collabora.com,codeaurora.org,arm.com,kernel.org,nvidia.com];
	NEURAL_HAM(-0.00)[-0.996];
	DKIM_TRACE(0.00)[google.com:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.179:from];
	RCPT_COUNT_TWELVE(0.00)[20];
	FROM_HAS_DN(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2]
X-Rspamd-Action: no action
Message-ID-Hash: GYKONCYW55DCJ6KRSAVAIV5YYB6PCIX7
X-Message-ID-Hash: GYKONCYW55DCJ6KRSAVAIV5YYB6PCIX7
X-MailFrom: jstultz@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Laurent Pinchart <laurent.pinchart@ideasonboard.com>, nicolas@ndufresne.ca, ppaalanen@gmail.com, sumit.semwal@linaro.org, daniel@ffwll.ch, robdclark@gmail.com, tfiga@chromium.org, sebastian.wick@redhat.com, hverkuil@xs4all.nl, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org, benjamin.gaignard@collabora.com, lmark@codeaurora.org, labbott@redhat.com, Brian.Starkey@arm.com, mchehab@kernel.org, James Jones <jajones@nvidia.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: DMA-heap driver hints
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/GYKONCYW55DCJ6KRSAVAIV5YYB6PCIX7/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

U29ycnkgZm9yIHRoZSBkZWxheSwgdGhpcyB3YXMgYWxtb3N0IHJlYWR5IHRvIHNlbmQsIGJ1dCB0
aGVuIGdvdA0KZm9yZ290dGVuIGluIG15IGRyYWZ0cyBmb2xkZXIuDQoNCk9uIE1vbiwgSmFuIDIz
LCAyMDIzIGF0IDExOjE1IFBNIENocmlzdGlhbiBLw7ZuaWcNCjxjaHJpc3RpYW4ua29lbmlnQGFt
ZC5jb20+IHdyb3RlOg0KPiBBbSAyNC4wMS4yMyB1bSAwNjoxOSBzY2hyaWViIEpvaG4gU3R1bHR6
Og0KPiA+IE9uIE1vbiwgSmFuIDIzLCAyMDIzIGF0IDg6MjkgQU0gQ2hyaXN0aWFuIEvDtm5pZw0K
PiA+IDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+IHdyb3RlOg0KPiA+PiBBbSAyMy4wMS4yMyB1
bSAxNDo1NSBzY2hyaWViIExhdXJlbnQgUGluY2hhcnQ6DQo+ID4+PiAtIEkgYXNzdW1lIHNvbWUg
ZHJpdmVycyB3aWxsIGJlIGFibGUgdG8gc3VwcG9ydCBtdWx0aXBsZSBoZWFwcy4gSG93IGRvDQo+
ID4+PiAgICAgeW91IGVudmlzaW9uIHRoaXMgYmVpbmcgaW1wbGVtZW50ZWQgPw0KPiA+PiBJIGRv
bid0IHJlYWxseSBzZWUgYW4gdXNlIGNhc2UgZm9yIHRoaXMuDQo+ID4+DQo+ID4+IFdlIGRvIGhh
dmUgc29tZSBkcml2ZXJzIHdoaWNoIHNheTogZm9yIHRoaXMgdXNlIGNhc2UgeW91IGNhbiB1c2UN
Cj4gPj4gd2hhdGV2ZXIgeW91IHdhbnQsIGJ1dCBmb3IgdGhhdCB1c2UgY2FzZSB5b3UgbmVlZCB0
byB1c2Ugc3BlY2lmaWMgbWVtb3J5DQo+ID4+IChzY2FuIG91dCBvbiBHUFVzIGZvciBleGFtcGxl
IHdvcmtzIGxpa2UgdGhpcykuDQo+ID4+DQo+ID4gW3NuaXBwaW5nIHRoZSBjb25zdHJhaW50cyBh
cmd1bWVudCwgd2hpY2ggSSBhZ3JlZSB3aXRoXQ0KPiA+PiBXaGF0IHdlIGRvIGhhdmUgaXMgY29t
cGF0aWJpbGl0eSBiZXR3ZWVuIGhlYXBzLiBFLmcuIGEgQ01BIGhlYXAgaXMNCj4gPj4gdXN1YWxs
eSBjb21wYXRpYmxlIHdpdGggdGhlIHN5c3RlbSBoZWFwIG9yIG1pZ2h0IGV2ZW4gYmUgYSBzdWJz
ZXQgb2YNCj4gPj4gYW5vdGhlciBDTUEgaGVhcC4gQnV0IEkgd2FudGVkIHRvIGFkZCB0aGF0IGFz
IG5leHQgc3RlcCB0byB0aGUgaGVhcHMNCj4gPj4gZnJhbWV3b3JrIGl0c2VsZi4NCj4gPiBTbyB0
aGUgZGlmZmljdWx0IHF1ZXN0aW9uIGlzIGhvdyBpcyB1c2VybGFuZCBzdXBwb3NlZCB0byBrbm93
IHdoaWNoDQo+ID4gaGVhcCBpcyBjb21wYXRpYmxlIHdpdGggd2hpY2g/DQo+DQo+IFRoZSBoZWFw
cyBzaG91bGQga25vdyB3aGljaCBvdGhlciBoZWFwIHRoZXkgYXJlIGNvbXBhdGlibGUgd2l0aC4N
Cj4NCj4gRS5nLiB0aGUgQ01BIGhlYXAgc2hvdWxkIGhhdmUgYSBsaW5rIHRvIHRoZSBzeXN0ZW0g
aGVhcCBiZWNhdXNlIGl0IGNhbg0KPiBoYW5kbGUgYWxsIHN5c3RlbSBtZW1vcnkgYWxsb2NhdGlv
bnMgYXMgd2VsbC4NCj4NCj4gSWYgd2UgaGF2ZSBhIHNwZWNpYWxpemVkIENNQSBoZWFwIChmb3Ig
ZXhhbXBsZSBmb3IgMzJiaXQgRE1BKSBpdCBzaG91bGQNCj4gaGF2ZSBhIGxpbmsgdG8gdGhlIGdl
bmVyYWwgQ01BIGhlYXAuDQoNClRoaXMgaXMgYW4gaW50ZXJlc3RpbmcgaWRlYSwgYnV0IGl0IHNl
ZW1zIHRvIGFzc3VtZSBhIGxpbmVhciBvciBhdA0KbGVhc3QgY29udmVyZ2luZyAiY29tcGF0aWJp
bGl0eSIgb3JkZXIsIHdoaWNoIEkgZG9uJ3QgdGhpbmsgaXMgYWx3YXlzDQp0aGUgY2FzZS4NCihG
b3IgaW5zdGFuY2UsIHRoZXJlIG1heSBiZSBzZWN1cmUgaGVhcHMgd2hpY2ggYSBzbWFsbCBzZXQg
b2YgZGV2aWNlcw0KaGF2ZSBhY2Nlc3MgdG8sIGJ1dCBzdXBwb3J0aW5nIHNlY3VyZSBtZW1vcnkg
ZG9lc24ndCBpbXBseSBzeXN0ZW0NCm1lbW9yeSBmb3IgYWxsIGRldmljZXMgb3IgdmljZSB2ZXJz
YSkuDQoNClNvIEkgcmVhbGx5IHRoaW5rIGJlaW5nIGFibGUgdG8gZXhwcmVzcyBzdXBwb3J0IGZv
ciBtdWx0aXBsZSBoZWFwcw0Kd291bGQgYmUgaW1wb3J0YW50IHRvIHJlc29sdmUgdGhlIG1ham9y
aXR5IG9mIHRoZXNlIGVkZ2UgY2FzZXMuDQoNCkFsc28gdG8gaGF2ZSBhIHNpbmdsZSBsaW5rIG9y
ZGVyaW5nLCBpdCBtZWFucyB0aGUgY29uc3RyYWludHMgaGF2ZSB0bw0KZ28gZnJvbSB0aGUgaGVh
cCB0aGF0IHNhdGlzZmllcyBtb3JlIGNvbnN0cmFpbnRzIHRvIHRoZSBoZWFwIHRoYXQNCnNhdGlz
ZmllcyBsZXNzICh3aGljaCBpcyBzb3J0IG9mIHJldmVyc2Ugb2YgaG93IEknZCB0aGluayBvZg0K
Y29tcGF0aWJpbGl0eSkuIFdoaWNoIG1ha2VzIHRoZSBzb2x2aW5nIGxvZ2ljIGZvciB1c2VybGFu
ZCBkb2FibGUsIGJ1dA0Kc29tZXdoYXQgY29tcGxleC9ub24taW50dWl0aXZlIChhcyB5b3UncmUg
c2VhcmNoaW5nIGZvciB0aGUgbW9zdA0KInNhdGlzZnlpbmciIGhlYXAgZnJvbSB0aGUgc2V0IHdo
aWNoIHdpbGwgYmUgb25lIG9mIHRoZSBzdGFydGluZw0KcG9pbnRzKS4NCg0KV2hlcmVhcyBmaW5k
aW5nIHRoZSBpbnRlcnNlY3Rpb24gb2YgbGlzdHMgc2VlbXMgYSBiaXQgbW9yZSBzdHJhaWdodGZv
cndhcmQuDQoNCg0KPiA+IElmIHlvdSBoYXZlIHR3byBkZXZpY2VzLCBvbmUgdGhhdCBwb2ludHMg
dG8gaGVhcCAiZm9vIiBhbmQgdGhlIG90aGVyDQo+ID4gcG9pbnRzIHRvIGhlYXAgImJhciIsIGhv
dyBkb2VzIHVzZXJsYW5kIGtub3cgdGhhdCAiZm9vIiBzYXRpc2ZpZXMgdGhlDQo+ID4gY29uc3Ry
YWludHMgb2YgImJhciIgYnV0ICJiYXIiIGRvZXNuJ3Qgc2F0aXNmeSB0aGUgY29uc3RyYWludHMg
b2YNCj4gPiAiZm9vIi4NCj4gPiAoZm9vID0iY21hIiwgIGJhcj0ic3lzdGVtIikNCj4gPg0KPiA+
IEkgdGhpbmsgaXQgd291bGQgYmUgbXVjaCBiZXR0ZXIgZm9yIGRldmljZSAxIHRvIGxpc3QgImZv
byIgYW5kIGRldmljZQ0KPiA+IDIgdG8gbGlzdCAiZm9vIiBhbmQgImJhciIsIHNvIHlvdSBjYW4g
ZmluZCB0aGF0ICJmb28iIGlzIHRoZSBjb21tb24NCj4gPiBoZWFwIHdoaWNoIHdpbGwgc29sdmUg
Ym90aCBkZXZpY2VzJyBuZWVkcy4NCj4NCj4gSSB0aGluayB0aGF0IHRoaXMgd291bGQgYmUgYSBy
YXRoZXIgYmFkIGlkZWEgYmVjYXVzZSB0aGVuIGFsbCBkZXZpY2VzDQo+IG5lZWQgdG8ga25vdyBh
Ym91dCBhbGwgdGhlIHBvc3NpYmxlIGRpZmZlcmVudCBoZWFwcyB0aGV5IGFyZSBjb21wYXRpYmxl
DQo+IHdpdGguDQoNCkkgYWdyZWUgaXQgaXMgc29tZXdoYXQgYnVyZGVuc29tZSwgYnV0IEkgc3Vz
cGVjdCB3ZSdkIGV2ZW50dWFsbHkgd2FudA0KcmVnaXN0cmF0aW9uIGhlbHBlcnMgdG8gYWJzdHJh
Y3Qgb3V0IHNvbWUgb2YgdGhlIHJlbGF0aW9uc2hpcHMgeW91DQptZW50aW9uIGFib3ZlIChpZTog
c3lzdGVtIHN1cHBvcnRpbmcgZGV2aWNlcyB3aWxsIGFjY2VwdCBDTUEgYnVmZmVycywNCmRtYTMy
IGJ1ZmZlcnMsIGV0YykuIEJ1dCBhdCBsZWFzdCB0aGF0IGxvZ2ljIHdvdWxkIGJlIGluLWtlcm5l
bCBhbmQNCm5vdCBleHBvc2VkIHRvIHVzZXJsYW5kLg0KDQo+ID4+PiAtIERldmljZXMgY291bGQg
aGF2ZSBkaWZmZXJlbnQgY29uc3RyYWludHMgYmFzZWQgb24gcGFydGljdWxhcg0KPiA+Pj4gICAg
IGNvbmZpZ3VyYXRpb25zLiBGb3IgaW5zdGFuY2UsIGEgZGV2aWNlIG1heSByZXF1aXJlIHNwZWNp
ZmljIG1lbW9yeQ0KPiA+Pj4gICAgIGxheW91dCBmb3IgbXVsdGktcGxhbmFyIFlVViBmb3JtYXRz
IG9ubHkgKGFzIGluIGFsbG9jYXRpbmcgdGhlIFkgYW5kIEMNCj4gPj4+ICAgICBwbGFuZXMgb2Yg
TlYxMiBmcm9tIGRpZmZlcmVudCBtZW1vcnkgYmFua3MpLiBBIGR5bmFtaWMgQVBJIG1heSB0aHVz
IGJlDQo+ID4+PiAgICAgbmVlZGVkIChidXQgbWF5IGFsc28gYmUgdmVyeSBwYWluZnVsIHRvIHVz
ZSBmcm9tIHVzZXJzcGFjZSkuDQo+ID4+IFVmZiwgZ29vZCB0byBrbm93LiBCdXQgSSdtIG5vdCBz
dXJlIGhvdyB0byBleHBvc2Ugc3R1ZmYgbGlrZSB0aGF0Lg0KPiA+IFllYWguIFRoZXNlIGVkZ2Ug
Y2FzZXMgYXJlIHJlYWxseSBoYXJkIHRvIHNvbHZlIGdlbmVyaWNhbGx5LiAgQW5kDQo+ID4gc2lu
Z2xlIGRldmljZXMgdGhhdCBoYXZlIHNlcGFyYXRlIGNvbnN0cmFpbnRzIGZvciBkaWZmZXJlbnQg
dXNlcyBhcmUNCj4gPiBhbHNvIG5vdCBnb2luZyB0byBiZSBzb2x2YWJsZSB3aXRoIGEgc2ltcGxl
IGxpbmtpbmcgYXBwcm9hY2guDQo+ID4NCj4gPiBCdXQgSSBkbyB3b25kZXIgaWYgYSBnZW5lcmlj
IHNvbHV0aW9uIHRvIGFsbCBjYXNlcyBpcyBuZWVkZWQNCj4gPiAoZXNwZWNpYWxseSBpZiBpdCBy
ZWFsbHkgaXNuJ3QgcG9zc2libGUpPyBJZiB3ZSBsZWF2ZSB0aGUgb3B0aW9uIGZvcg0KPiA+IGdy
YWxsb2MgbGlrZSBvbW5pc2NpZW50IGRldmljZS1zcGVjaWZpYyB1c2VybGFuZCBwb2xpY3ksIHRo
b3NlIGVkZ2UNCj4gPiBjYXNlcyBjYW4gYmUgaGFuZGxlZCBieSB0aG9zZSBkZXZpY2VzIHRoYXQg
Y2FuJ3QgcnVuIGdlbmVyaWMgbG9naWMuDQo+ID4gQW5kIHRob3NlIGRldmljZXMganVzdCB3b24n
dCBiZSBhYmxlIHRvIGJlIHN1cHBvcnRlZCBieSBnZW5lcmljDQo+ID4gZGlzdHJvcywgaG9wZWZ1
bGx5IG1vdGl2YXRpbmcgZnV0dXJlIGRlc2lnbnMgdG8gaGF2ZSBsZXNzIG9kZA0KPiA+IGNvbnN0
cmFpbnRzPw0KPg0KPiBQb3RlbnRpYWxseSB5ZXMsIGJ1dCBJIHRoaW5rIHRoYXQgYW55dGhpbmcg
bW9yZSBjb21wbGV4IHRoYW4gInBsZWFzZQ0KPiBhbGxvY2F0ZSBmcm9tIHRoaXMgcGllY2Ugb2Yg
bWVtb3J5IGZvciBtZSIgaXMgbm90IHNvbWV0aGluZyB3aGljaCBzaG91bGQNCj4gYmUgaGFuZGxl
ZCBpbnNpZGUgdGhlIGRldmljZSBpbmRlcGVuZGVudCBmcmFtZXdvcmsuDQo+DQo+IEVzcGVjaWFs
bHkgZGV2aWNlIHNwZWNpZmljIG1lbW9yeSBhbmQgYWxsb2NhdGlvbiBjb25zdHJhaW5zIChlLmcu
IHRoaW5ncw0KPiBsaWtlIGRvbid0IHB1dCB0aG9zZSB0d28gdGhpbmdzIG9uIHRoZSBzYW1lIG1l
bW9yeSBjaGFubmVsKSBpcyAqbm90Kg0KPiBzb21ldGhpbmcgd2Ugc2hvdWxkIGhhdmUgaW4gYW4g
aW50ZXIgZGV2aWNlIGZyYW1ld29yay4NCj4NCj4gSW4gdGhvc2UgY2FzZXMgd2Ugc2hvdWxkIGp1
c3QgYmUgYWJsZSB0byBzYXkgdGhhdCBhbiBhbGxvY2F0aW9uIHNob3VsZA0KPiBiZSBtYWRlIGZy
b20gYSBzcGVjaWZpYyBkZXZpY2UgYW5kIHRoZW4gbGV0IHRoZSBkZXZpY2Ugc3BlY2lmaWMgZHJp
dmVycw0KPiBkZWFsIHdpdGggdGhlIGNvbnN0cmFpbi4NCg0KWWVhaC4gSSBkb24ndCB0aGluayB3
ZSBjYW4gZ2V0IGF3YXkgZnJvbSBuZWVkaW5nIG9tbmlzY2llbnQgdXNlcmxhbmQsDQpidXQgaG9w
ZWZ1bGx5IHdlIGNhbiBzb2x2ZSBhIGxhcmdlIGNodW5rIG9mIHRoZSBpc3N1ZSB3aXRoIHNvbWV0
aGluZw0KbGlrZSB5b3VyIGFwcHJvYWNoLg0KDQp0aGFua3MNCi1qb2huDQpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcg
bGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2Vu
ZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
