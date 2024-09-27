Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 50AAA988AE3
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 27 Sep 2024 21:50:26 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 009C2446C7
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 27 Sep 2024 19:50:25 +0000 (UTC)
Received: from mail-qv1-f43.google.com (mail-qv1-f43.google.com [209.85.219.43])
	by lists.linaro.org (Postfix) with ESMTPS id DD2AB40E1C
	for <linaro-mm-sig@lists.linaro.org>; Fri, 27 Sep 2024 19:50:07 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ndufresne-ca.20230601.gappssmtp.com header.s=20230601 header.b="oqEzAw8/";
	dmarc=none;
	spf=none (lists.linaro.org: domain of nicolas@ndufresne.ca has no SPF policy when checking 209.85.219.43) smtp.mailfrom=nicolas@ndufresne.ca
Received: by mail-qv1-f43.google.com with SMTP id 6a1803df08f44-6c548eb3354so18960536d6.2
        for <linaro-mm-sig@lists.linaro.org>; Fri, 27 Sep 2024 12:50:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20230601.gappssmtp.com; s=20230601; t=1727466607; x=1728071407; darn=lists.linaro.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=U2tg8OU6eAd7XdNvSYc+LJitu1DCYWL+a/jnG4hrEak=;
        b=oqEzAw8/qqsDUOF2spPHHWdZsSjG6aq5d8GJ3pPTnffjBsNBSiMgV87qwE5xlu0mfR
         n5MD/uYwGXQ+VB3YwxXaA0P9qDvvovw/UHSHNKTbHFa2kKFLd4yPp7dQwPbt4DuTEPhv
         QWN9gTMPDHKxT1nyohIxem4HTroB7FueUtnKm7Ud0k06AppEQO1B3Vs9OfblAZI27euA
         63VAOWEdDLHTgi304LLoWY931qZ2XDPxcFBDb/9EGHnoZ+Yd8XLwRzJwKRd5QEcSyUyf
         dhw1odAKKmh63axRgoOEOf80ySbyeplfk48ByBCO+Y8O+9X6EE1XRyvxIYtEhSxcu+0z
         zUHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727466607; x=1728071407;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=U2tg8OU6eAd7XdNvSYc+LJitu1DCYWL+a/jnG4hrEak=;
        b=EqZOKN0udChuV/9yjjiNTumrupKf/kp0YA9TwJZ2ZFAqdRmRfUwI+X5jXrAPxo/I3j
         e2Tt1gFxEYdIexJlHTUIJO2woj7LTPQ8fk7JYfWlyDtCTYxTNPszk/okwT7nufUn1dyT
         +j24YLhnb4r34mdTIa+CUIcXvqFlCmKKCFex7BFLG+fJ1XDDzQrbKGvnGwckBeikJjJZ
         UaEtA01bWk3OGTtzxQxyki9yuDA2ZVOPYy7u8jOGKDMN9h0Rzn+R73ptLXjnz/lpPMuS
         YnzuL1SvyalXhNqn7VKXT7yClWFbVtN4JCiQ21qmpW6jsGJv/n4IOWbAoh+LhErdGTR/
         R6dw==
X-Forwarded-Encrypted: i=1; AJvYcCX9V6B+KZhvMEwGFL0dZJmZO5KlWBDASuhdZLzEvX73MxlvRaM9NxrrErcTn4e1HIFCxrked59DZdtRi7cN@lists.linaro.org
X-Gm-Message-State: AOJu0Yy9OLDilAcM82VWjUnFc3RhY0R/P7ak1tQeOZOlfoq1Wx7wZrXT
	Pkiumvt3UiQwomIlR+q6ywHqpwy4F56O66RASZ+bGa0RDm6rvaJXUmLy5OdBR3U=
X-Google-Smtp-Source: AGHT+IE8GLjUnXh75USL6POTL0wF3GhP3RbPQsW20Tmjvx9gUrkr/ENH4ZzNWvAis54wTSGF58cLZw==
X-Received: by 2002:a05:6214:3d8a:b0:6cb:32ef:d55f with SMTP id 6a1803df08f44-6cb3b5b7ef0mr80052226d6.6.1727466607342;
        Fri, 27 Sep 2024 12:50:07 -0700 (PDT)
Received: from nicolas-tpx395.lan ([2606:6d00:15:862e::580])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6cb3b610b12sm12230896d6.39.2024.09.27.12.50.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Sep 2024 12:50:06 -0700 (PDT)
Message-ID: <7c9e3a1a6092f6574c17d7206767ece0bcefc81f.camel@ndufresne.ca>
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Sumit Garg <sumit.garg@linaro.org>, Christian =?ISO-8859-1?Q?K=F6nig?=
 <christian.koenig@amd.com>, Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
  Christian =?ISO-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Date: Fri, 27 Sep 2024 15:50:05 -0400
In-Reply-To: <CAFA6WYMd46quafJoGXjkCiPOKpYoDZdXwrNbG3QekyjB3_2FTA@mail.gmail.com>
References: <20240830070351.2855919-1-jens.wiklander@linaro.org>
	 <dhxvyshwi4qmcmwceokhqey2ww4azjcs6qrpnkgivdj7tv5cke@r36srvvbof6q>
	 <d8e0cb78-7cfb-42bf-b3a5-f765592e8dd4@ti.com>
	 <mzur3odofwwrdqnystozjgf3qtvb73wqjm6g2vf5dfsqiehaxk@u67fcarhm6ge>
	 <e967e382-6cca-4dee-8333-39892d532f71@gmail.com>
	 <lk7a2xuqrctyywuanjwseh5lkcz3soatc2zf3kn3uwc43pdyic@edm3hcd2koas>
	 <04caa788-19a6-4336-985c-4eb191c24438@amd.com>
	 <2f9a4abe-b2fc-4bc7-9926-1da2d38f5080@linaro.org>
	 <CAFA6WYMd46quafJoGXjkCiPOKpYoDZdXwrNbG3QekyjB3_2FTA@mail.gmail.com>
User-Agent: Evolution 3.52.4 (3.52.4-1.fc40) 
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: DD2AB40E1C
X-Spamd-Bar: -
X-Spamd-Result: default: False [-1.80 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_ALLOW(-0.20)[ndufresne-ca.20230601.gappssmtp.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	TAGGED_RCPT(0.00)[dt];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.219.43:from];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCPT_COUNT_TWELVE(0.00)[27];
	FREEMAIL_TO(0.00)[linaro.org,amd.com,gmail.com];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-1.000];
	R_SPF_NA(0.00)[no SPF record];
	MID_RHS_MATCH_FROM(0.00)[];
	DMARC_NA(0.00)[ndufresne.ca];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[ti.com,linaro.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.trustedfirmware.org,lists.infradead.org,nxp.com,gmail.com,mediatek.com,collabora.com,arm.com,google.com,kernel.org];
	TO_DN_SOME(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[ndufresne-ca.20230601.gappssmtp.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: FRFREHQ7T4MWQYT7F7XYVXB4I67RQHFX
X-Message-ID-Hash: FRFREHQ7T4MWQYT7F7XYVXB4I67RQHFX
X-MailFrom: nicolas@ndufresne.ca
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Andrew Davis <afd@ti.com>, Jens Wiklander <jens.wiklander@linaro.org>, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, op-tee@lists.trustedfirmware.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, Olivier Masse <olivier.masse@nxp.com>, Thierry Reding <thierry.reding@gmail.com>, Yong Wu <yong.wu@mediatek.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH 0/4] Linaro restricted heap
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/FRFREHQ7T4MWQYT7F7XYVXB4I67RQHFX/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

TGUgamV1ZGkgMjYgc2VwdGVtYnJlIDIwMjQgw6AgMTk6MjIgKzA1MzAsIFN1bWl0IEdhcmcgYSDD
qWNyaXTCoDoNCj4gW1Jlc2VuZCBpbiBwbGFpbiB0ZXh0IGZvcm1hdCBhcyBteSBlYXJsaWVyIG1l
c3NhZ2Ugd2FzIHJlamVjdGVkIGJ5DQo+IHNvbWUgbWFpbGluZyBsaXN0c10NCj4gDQo+IE9uIFRo
dSwgMjYgU2VwdCAyMDI0IGF0IDE5OjE3LCBTdW1pdCBHYXJnIDxzdW1pdC5nYXJnQGxpbmFyby5v
cmc+IHdyb3RlOg0KPiA+IA0KPiA+IE9uIDkvMjUvMjQgMTk6MzEsIENocmlzdGlhbiBLw7ZuaWcg
d3JvdGU6DQo+ID4gDQo+ID4gQW0gMjUuMDkuMjQgdW0gMTQ6NTEgc2NocmllYiBEbWl0cnkgQmFy
eXNoa292Og0KPiA+IA0KPiA+IE9uIFdlZCwgU2VwIDI1LCAyMDI0IGF0IDEwOjUxOjE1QU0gR01U
LCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPiA+IA0KPiA+IEFtIDI1LjA5LjI0IHVtIDAxOjA1
IHNjaHJpZWIgRG1pdHJ5IEJhcnlzaGtvdjoNCj4gPiANCj4gPiBPbiBUdWUsIFNlcCAyNCwgMjAy
NCBhdCAwMToxMzoxOFBNIEdNVCwgQW5kcmV3IERhdmlzIHdyb3RlOg0KPiA+IA0KPiA+IE9uIDkv
MjMvMjQgMTozMyBBTSwgRG1pdHJ5IEJhcnlzaGtvdiB3cm90ZToNCj4gPiANCj4gPiBIaSwNCj4g
PiANCj4gPiBPbiBGcmksIEF1ZyAzMCwgMjAyNCBhdCAwOTowMzo0N0FNIEdNVCwgSmVucyBXaWts
YW5kZXIgd3JvdGU6DQo+ID4gDQo+ID4gSGksDQo+ID4gDQo+ID4gVGhpcyBwYXRjaCBzZXQgaXMg
YmFzZWQgb24gdG9wIG9mIFlvbmcgV3UncyByZXN0cmljdGVkIGhlYXAgcGF0Y2ggc2V0IFsxXS4N
Cj4gPiBJdCdzIGFsc28gYSBjb250aW51YXRpb24gb24gT2xpdmllcidzIEFkZCBkbWEtYnVmIHNl
Y3VyZS1oZWFwIHBhdGNoIHNldCBbMl0uDQo+ID4gDQo+ID4gVGhlIExpbmFybyByZXN0cmljdGVk
IGhlYXAgdXNlcyBnZW5hbGxvYyBpbiB0aGUga2VybmVsIHRvIG1hbmFnZSB0aGUgaGVhcA0KPiA+
IGNhcnZvdXQuIFRoaXMgaXMgYSBkaWZmZXJlbmNlIGZyb20gdGhlIE1lZGlhdGVrIHJlc3RyaWN0
ZWQgaGVhcCB3aGljaA0KPiA+IHJlbGllcyBvbiB0aGUgc2VjdXJlIHdvcmxkIHRvIG1hbmFnZSB0
aGUgY2FydmVvdXQuDQo+ID4gDQo+ID4gSSd2ZSB0cmllZCB0byBhZHJlc3MgdGhlIGNvbW1lbnRz
IG9uIFsyXSwgYnV0IFsxXSBpbnRyb2R1Y2VzIGNoYW5nZXMgc28gSSdtDQo+ID4gYWZyYWlkIEkn
dmUgaGFkIHRvIHNraXAgc29tZSBjb21tZW50cy4NCj4gPiANCj4gPiBJIGtub3cgSSBoYXZlIHJh
aXNlZCB0aGUgc2FtZSBxdWVzdGlvbiBkdXJpbmcgTFBDIChpbiBjb25uZWN0aW9uIHRvDQo+ID4g
UXVhbGNvbW0ncyBkbWEtaGVhcCBpbXBsZW1lbnRhdGlvbikuIElzIHRoZXJlIGFueSByZWFzb24g
d2h5IHdlIGFyZQ0KPiA+IHVzaW5nIGdlbmVyaWMgaGVhcHMgaW5zdGVhZCBvZiBhbGxvY2F0aW5n
IHRoZSBkbWEtYnVmcyBvbiB0aGUgZGV2aWNlDQo+ID4gc2lkZT8NCj4gPiANCj4gPiBJbiB5b3Vy
IGNhc2UgeW91IGFscmVhZHkgaGF2ZSBURUUgZGV2aWNlLCB5b3UgY2FuIHVzZSBpdCB0byBhbGxv
Y2F0ZSBhbmQNCj4gPiBleHBvcnQgZG1hLWJ1ZnMsIHdoaWNoIHRoZW4gZ2V0IGltcG9ydGVkIGJ5
IHRoZSBWNEwgYW5kIERSTSBkcml2ZXJzLg0KPiA+IA0KPiA+IFRoaXMgZ29lcyB0byB0aGUgaGVh
cnQgb2Ygd2h5IHdlIGhhdmUgZG1hLWhlYXBzIGluIHRoZSBmaXJzdCBwbGFjZS4NCj4gPiBXZSBk
b24ndCB3YW50IHRvIGJ1cmRlbiB1c2Vyc3BhY2Ugd2l0aCBoYXZpbmcgdG8gZmlndXJlIG91dCB0
aGUgcmlnaHQNCj4gPiBwbGFjZSB0byBnZXQgYSBkbWEtYnVmIGZvciBhIGdpdmVuIHVzZS1jYXNl
IG9uIGEgZ2l2ZW4gaGFyZHdhcmUuDQo+ID4gVGhhdCB3b3VsZCBiZSB2ZXJ5IG5vbi1wb3J0YWJs
ZSwgYW5kIGZhaWwgYXQgdGhlIGNvcmUgcHVycG9zZSBvZg0KPiA+IGEga2VybmVsOiB0byBhYnN0
cmFjdCBoYXJkd2FyZSBzcGVjaWZpY3MgYXdheS4NCj4gPiANCj4gPiBVbmZvcnR1bmF0ZWx5IGFs
bCBwcm9wb3NhbHMgdG8gdXNlIGRtYS1idWYgaGVhcHMgd2VyZSBtb3ZpbmcgaW4gdGhlDQo+ID4g
ZGVzY3JpYmVkIGRpcmVjdGlvbjogbGV0IGFwcCBzZWxlY3QgKHNvbWVob3cpIGZyb20gYSBwbGF0
Zm9ybS0gYW5kDQo+ID4gdmVuZG9yLSBzcGVjaWZpYyBsaXN0IG9mIGRtYS1idWYgaGVhcHMuIElu
IHRoZSBrZXJuZWwgd2UgYXQgbGVhc3Qga25vdw0KPiA+IHRoZSBwbGF0Zm9ybSBvbiB3aGljaCB0
aGUgc3lzdGVtIGlzIHJ1bm5pbmcuIFVzZXJzcGFjZSBnZW5lcmFsbHkgZG9lc24ndA0KPiA+IChh
bmQgc2hvdWxkbid0KS4gQXMgc3VjaCwgaXQgc2VlbXMgYmV0dGVyIHRvIG1lIHRvIGtlZXAgdGhl
IGtub3dsZWRnZSBpbg0KPiA+IHRoZSBrZXJuZWwgYW5kIGFsbG93IHVzZXJzcGFjZSBkbyBpdHMg
am9iIGJ5IGNhbGxpbmcgaW50byBleGlzdGluZw0KPiA+IGRldmljZSBkcml2ZXJzLg0KPiA+IA0K
PiA+IFRoZSBpZGVhIG9mIGxldHRpbmcgdGhlIGtlcm5lbCBmdWxseSBhYnN0cmFjdCBhd2F5IHRo
ZSBjb21wbGV4aXR5IG9mIGludGVyDQo+ID4gZGV2aWNlIGRhdGEgZXhjaGFuZ2UgaXMgYSBjb21w
bGV0ZWx5IGZhaWxlZCBkZXNpZ24uIFRoZXJlIGhhcyBiZWVuIHBsZW50eSBvZg0KPiA+IGV2aWRl
bmNlIGZvciB0aGF0IG92ZXIgdGhlIHllYXJzLg0KPiA+IA0KPiA+IEJlY2F1c2Ugb2YgdGhpcyBp
biBETUEtYnVmIGl0J3MgYW4gaW50ZW50aW9uYWwgZGVzaWduIGRlY2lzaW9uIHRoYXQNCj4gPiB1
c2Vyc3BhY2UgYW5kICpub3QqIHRoZSBrZXJuZWwgZGVjaWRlcyB3aGVyZSBhbmQgd2hhdCB0byBh
bGxvY2F0ZSBmcm9tLg0KPiA+IA0KPiA+IEhtbSwgb2suDQo+ID4gDQo+ID4gV2hhdCB0aGUga2Vy
bmVsIHNob3VsZCBwcm92aWRlIGFyZSB0aGUgbmVjZXNzYXJ5IGluZm9ybWF0aW9uIHdoYXQgdHlw
ZSBvZg0KPiA+IG1lbW9yeSBhIGRldmljZSBjYW4gd29yayB3aXRoIGFuZCBpZiBjZXJ0YWluIG1l
bW9yeSBpcyBhY2Nlc3NpYmxlIG9yIG5vdC4NCj4gPiBUaGlzIGlzIHRoZSBwYXJ0IHdoaWNoIGlz
IHVuZm9ydHVuYXRlbHkgc3RpbGwgbm90IHdlbGwgZGVmaW5lZCBub3INCj4gPiBpbXBsZW1lbnRl
ZCBhdCB0aGUgbW9tZW50Lg0KPiA+IA0KPiA+IEFwYXJ0IGZyb20gdGhhdCB0aGVyZSBhcmUgYSB3
aG9sZSBidW5jaCBvZiBpbnRlbnRpb25hbCBkZXNpZ24gZGVjaXNpb24gd2hpY2gNCj4gPiBzaG91
bGQgcHJldmVudCBkZXZlbG9wZXJzIHRvIG1vdmUgYWxsb2NhdGlvbiBkZWNpc2lvbiBpbnNpZGUg
dGhlIGtlcm5lbC4gRm9yDQo+ID4gZXhhbXBsZSBETUEtYnVmIGRvZXNuJ3Qga25vdyB3aGF0IHRo
ZSBjb250ZW50IG9mIHRoZSBidWZmZXIgaXMgKGV4Y2VwdCBmb3INCj4gPiBpdCdzIHRvdGFsIHNp
emUpIGFuZCB3aGljaCB1c2UgY2FzZXMgYSBidWZmZXIgd2lsbCBiZSB1c2VkIHdpdGguDQo+ID4g
DQo+ID4gU28gdGhlIHF1ZXN0aW9uIGlmIG1lbW9yeSBzaG91bGQgYmUgZXhwb3NlZCB0aHJvdWdo
IERNQS1oZWFwcyBvciBhIGRyaXZlcg0KPiA+IHNwZWNpZmljIGFsbG9jYXRvciBpcyBub3QgYSBx
dWVzdGlvbiBvZiBhYnN0cmFjdGlvbiwgYnV0IHJhdGhlciBvbmUgb2YgdGhlDQo+ID4gcGh5c2lj
YWwgbG9jYXRpb24gYW5kIGFjY2Vzc2liaWxpdHkgb2YgdGhlIG1lbW9yeS4NCj4gPiANCj4gPiBJ
ZiB0aGUgbWVtb3J5IGlzIGF0dGFjaGVkIHRvIGFueSBwaHlzaWNhbCBkZXZpY2UsIGUuZy4gbG9j
YWwgbWVtb3J5IG9uIGENCj4gPiBkR1BVLCBGUEdBIFBDSWUgQkFSLCBSRE1BLCBjYW1lcmEgaW50
ZXJuYWwgbWVtb3J5IGV0YywgdGhlbiBleHBvc2UgdGhlDQo+ID4gbWVtb3J5IGFzIGRldmljZSBz
cGVjaWZpYyBhbGxvY2F0b3IuDQo+ID4gDQo+ID4gU28sIGZvciBlbWJlZGRlZCBzeXN0ZW1zIHdp
dGggdW5pZmllZCBtZW1vcnkgYWxsIGJ1ZmZlcnMgKG1heWJlIGV4Y2VwdA0KPiA+IFBDSWUgQkFS
cykgc2hvdWxkIGNvbWUgZnJvbSBETUEtQlVGIGhlYXBzLCBjb3JyZWN0Pw0KPiA+IA0KPiA+IA0K
PiA+IEZyb20gd2hhdCBJIGtub3cgdGhhdCBpcyBjb3JyZWN0LCB5ZXMuIFF1ZXN0aW9uIGlzIHJl
YWxseSBpZiB0aGF0IHdpbGwgc3RheSB0aGlzIHdheS4NCj4gPiANCj4gPiBOZXVyYWwgYWNjZWxl
cmF0b3JzIGxvb2sgYSBsb3Qgc3RyaXBwZWQgZG93biBGUEdBcyB0aGVzZSBkYXlzIGFuZCB0aGUg
YmVuZWZpdCBvZiBsb2NhbCBtZW1vcnkgZm9yIEdQVXMgaXMga25vd24gZm9yIGRlY2FkZXMuDQo+
ID4gDQo+ID4gQ291bGQgYmUgdGhhdCBkZXNpZ25zIHdpdGggbG9jYWwgc3BlY2lhbGl6ZWQgbWVt
b3J5IHNlZSBhIHJldml2YWwgYW55IHRpbWUsIHdobyBrbm93cy4NCj4gPiANCj4gPiBJZiB0aGUg
bWVtb3J5IGlzIG5vdCBwaHlzaWNhbGx5IGF0dGFjaGVkIHRvIGFueSBkZXZpY2UsIGJ1dCByYXRo
ZXIganVzdA0KPiA+IG1lbW9yeSBhdHRhY2hlZCB0byB0aGUgQ1BVIG9yIGEgc3lzdGVtIHdpZGUg
bWVtb3J5IGNvbnRyb2xsZXIgdGhlbiBleHBvc2UNCj4gPiB0aGUgbWVtb3J5IGFzIERNQS1oZWFw
IHdpdGggc3BlY2lmaWMgcmVxdWlyZW1lbnRzIChlLmcuIGNlcnRhaW4gc2l6ZWQgcGFnZXMsDQo+
ID4gY29udGlndW91cywgcmVzdHJpY3RlZCwgZW5jcnlwdGVkLCAuLi4pLg0KPiA+IA0KPiA+IElz
IGVuY3J5cHRlZCAvIHByb3RlY3RlZCBhIHBhcnQgb2YgdGhlIGFsbG9jYXRpb24gY29udHJhY3Qg
b3Igc2hvdWxkIGl0DQo+ID4gYmUgZW5mb3JjZWQgc2VwYXJhdGVseSB2aWEgYSBjYWxsIHRvIFRF
RSAvIFNDTSAvIGFueXRoaW5nIGVsc2U/DQo+ID4gDQo+ID4gDQo+ID4gV2VsbCB0aGF0IGlzIGEg
cmVhbGx5IGdvb2QgcXVlc3Rpb24gSSBjYW4ndCBmdWxseSBhbnN3ZXIgZWl0aGVyLiBGcm9tIHdo
YXQgSSBrbm93IG5vdyBJIHdvdWxkIHNheSBpdCBkZXBlbmRzIG9uIHRoZSBkZXNpZ24uDQo+ID4g
DQo+IA0KPiBJTUhPLCBJIHRoaW5rIERtaXRyeSdzIHByb3Bvc2FsIHRvIHJhdGhlciBhbGxvdyB0
aGUgVEVFIGRldmljZSB0byBiZQ0KPiB0aGUgYWxsb2NhdG9yIGFuZCBleHBvcnRlciBvZiBETUEt
YnVmcyByZWxhdGVkIHRvIHJlc3RyaWN0ZWQgbWVtb3J5DQo+IG1ha2VzIHNlbnNlIHRvIG1lLiBT
aW5jZSBpdCdzIHJlYWxseSB0aGUgVEVFIGltcGxlbWVudGF0aW9uIChPUC1URUUsDQo+IEFNRC1U
RUUsIFRTLVRFRSBvciBmdXR1cmUgUVRFRSkgd2hpY2ggc2V0cyB1cCB0aGUgcmVzdHJpY3Rpb25z
IG9uIGENCj4gcGFydGljdWxhciBwaWVjZSBvZiBhbGxvY2F0ZWQgbWVtb3J5LiBBRkFJSywgdGhh
dCBoYXBwZW5zIGFmdGVyIHRoZQ0KPiBETUEtYnVmIGdldHMgYWxsb2NhdGVkIGFuZCB0aGVuIHVz
ZXItc3BhY2UgY2FsbHMgaW50byBURUUgdG8gc2V0IHVwDQo+IHdoaWNoIG1lZGlhIHBpcGVsaW5l
IGlzIGdvaW5nIHRvIGFjY2VzcyB0aGF0IHBhcnRpY3VsYXIgRE1BLWJ1Zi4gSXQNCj4gY2FuIGFs
c28gYmUgYSBzdGF0aWMgY29udHJhY3QgZGVwZW5kaW5nIG9uIGEgcGFydGljdWxhciBwbGF0Zm9y
bQ0KPiBkZXNpZ24uDQoNCldoZW4gdGhlIG1lbW9yeSBnZXQgdGhlIHByb3RlY3Rpb24gaXMgaGFy
ZHdhcmUgc3BlY2lmaWMuIE90aGVyd2lzZSB0aGUgZGVzaWduDQp3b3VsZCBiZSByZWFsbHkgc3Ry
YWlnaHRmb3J3YXJkLCBhbGxvY2F0ZSBmcm9tIHRoZSBhIGhlYXAgb3IgYW55IHJhbmRvbSBkcml2
ZXINCkFQSSBhbmQgcHJvdGVjdCB0aGF0IG1lbW9yeSB0aHJvdWdoIGFuIGNhbGwgaW50byB0aGUg
VEVFLiBDbGVhciBzZXBlcmF0aW9uIHdvdWxkDQpiZSBhbWF6aW5nbHkgYmV0dGVyLCBidXQgdGhp
cyBpcyBub3QgaG93IGhhcmR3YXJlIGFuZCBmaXJtd2FyZSBkZXNpZ25lciBoYXZlDQpzZWVuIGl0
LiANCg0KSW4gc29tZSBpbXBsZW1lbnRhdGlvbiwgdGhlcmUgaXMgYSBjYXJ2aW5nIG9mIG1lbW9y
eSB0aGF0IGJlIHByb3RlY3RlZCBiZWZvcmUNCnRoZSBrZXJuZWwgaXMgYm9vdGVkLiBJIGJlbGll
dmUgKGJ1dCBJJ20gbm90IGFmZmlsaWF0ZWQgd2l0aCB0aGVtKSB0aGF0IE1USyBoYXMNCmhhcmR3
YXJlIHJlc3RyaWN0aW9uIG1ha2luZyB0aGF0IGRlc2lnbiB0aGUgb25seSB1c2FibGUgbWV0aG9k
Lg0KDQpJbiBnZW5lcmFsLCB0aGUgaGFuZGxpbmcgb2Ygc2VjdXJlIG1lbW9yeSBpcyBib3VuZCB0
byB0aGUgVEVFIGFwcGxpY2F0aW9uIGZvcg0KdGhlIHNwZWNpZmljIHBsYXRmb3JtLCBpdCBoYXMg
dG8gYmUgc2VwYXJhdGVkIGZyb20gdGhlIGdlbmVyaWMgcGFydCBvZiB0ZWUNCmRyaXZlcnMgYW55
d2F5LCBhbmQgZG1hYnVmIGhlYXBzIGlzIGluIG15IG9waW5pb24gdGhlIHJpZ2h0IEFQSSBmb3Ig
dGhlIHRhc2suDQoNCk9uIE1USywgaWYgeW91IGhhdmUgZm9sbG93ZWQsIHdoZW4gdGhlIFNDUCAo
dGhlaXIgY28tcHJvY2Vzc29yKSBpcyBoYW5kbGluZw0KcmVzdHJpY3RlZCB2aWRlbywgeW91IGNh
bid0IGV2ZW4gY2FsbCBpbnRvIGl0IGFueW1vcmUgZGlyZWN0bHkuIFNvIHRvIGRyaXZlIHRoZQ0K
Q09ERUNzLCBldmVyeXRoaW5nIGhhcyB0byBiZSByb3V0ZWQgdGhyb3VnaCB0aGUgVEVFLiBXb3Vs
ZCB5b3Ugc2F5IHRoYXQgYmVjYXVzZQ0Kb2YgdGhhdCB0aGlzIHNob3VsZCBub3QgYmUgYSBWNEwy
IGRyaXZlciBhbnltb3JlID8NCg0KPiANCj4gQXMgSmVucyBub3RlZCBpbiB0aGUgb3RoZXIgdGhy
ZWFkLCB3ZSBhbHJlYWR5IG1hbmFnZSBzaGFyZWQgbWVtb3J5DQo+IGFsbG9jYXRpb25zIChmcm9t
IGEgc3RhdGljIGNhcnZlLW91dCBvciBkeW5hbWljYWxseSBtYXBwZWQpIGZvcg0KPiBjb21tdW5p
Y2F0aW9ucyBhbW9uZyBMaW51eCBhbmQgVEVFIHRoYXQgd2VyZSBiYXNlZCBvbiBETUEtYnVmcyBl
YXJsaWVyDQo+IGJ1dCBzaW5jZSB3ZSBkaWRuJ3QgcmVxdWlyZWQgdGhlbSB0byBiZSBzaGFyZWQg
d2l0aCBvdGhlciBkZXZpY2VzLCBzbw0KPiB3ZSByYXRoZXIgc3dpdGNoZWQgdG8gYW5vbnltb3Vz
IG1lbW9yeS4NCj4gDQo+IEZyb20gdXNlci1zcGFjZSBwZXJzcGVjdGl2ZSwgaXQncyBjbGVhbmVy
IHRvIHVzZSBURUUgZGV2aWNlIElPQ1RMcyBmb3INCj4gRE1BLWJ1ZiBhbGxvY2F0aW9ucyBzaW5j
ZSBpdCBhbHJlYWR5IGtub3dzIHdoaWNoIHVuZGVybHlpbmcgVEVFDQo+IGltcGxlbWVudGF0aW9u
IGl0J3MgY29tbXVuaWNhdGluZyB3aXRoIHJhdGhlciB0aGFuIGZpcnN0IGZpZ3VyaW5nIG91dA0K
PiB3aGljaCBETUEgaGVhcCB0byB1c2UgZm9yIGFsbG9jYXRpb24gYW5kIHRoZW4gY29tbXVuaWNh
dGluZyB3aXRoIFRFRQ0KPiBpbXBsZW1lbnRhdGlvbi4NCg0KQXMgYSB1c2VyLXNwYWNlIGRldmVs
b3BlciBpbiB0aGUgbWFqb3JpdHkgb2YgbXkgdGltZSwgYWRkaW5nIGNvbW1vbiBjb2RlIHRvDQpo
YW5kbGUgZG1hIGhlYXBzIGlzIGEgbG90IGVhc2llciBhbmQgc3RyYWlnaHQgZm9yd2FyZCB0aGVu
IGhhdmluZyB0byBnbHVlIGFsbA0KdGhlIGRpZmZlcmVudCBhbGxvY2F0b3JzIGltcGxlbWVudCBp
biB2YXJpb3VzIHN1YnN5c3RlbXMuIENvbW11bmljYXRpbmcgd2hpY2gNCmhlYXAgdG8gd29yayBj
YW4gYmUgZ2VuZXJpYyBhbmQgc2ltcGxlLg0KDQpOaWNvbGFzDQoNCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0
IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFu
IGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
