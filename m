Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 9883491C758
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 28 Jun 2024 22:34:10 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9878744984
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 28 Jun 2024 20:34:09 +0000 (UTC)
Received: from mail-qv1-f54.google.com (mail-qv1-f54.google.com [209.85.219.54])
	by lists.linaro.org (Postfix) with ESMTPS id 60EF940E1F
	for <linaro-mm-sig@lists.linaro.org>; Fri, 28 Jun 2024 20:34:06 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ndufresne-ca.20230601.gappssmtp.com header.s=20230601 header.b=KqtfLVt6;
	spf=none (lists.linaro.org: domain of nicolas@ndufresne.ca has no SPF policy when checking 209.85.219.54) smtp.mailfrom=nicolas@ndufresne.ca;
	dmarc=none
Received: by mail-qv1-f54.google.com with SMTP id 6a1803df08f44-6ad8243dba8so5816166d6.3
        for <linaro-mm-sig@lists.linaro.org>; Fri, 28 Jun 2024 13:34:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20230601.gappssmtp.com; s=20230601; t=1719606846; x=1720211646; darn=lists.linaro.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=qYPfqbEMN6sw16M9it9ilQpXO99tYg8BSEm27C5utMc=;
        b=KqtfLVt6LQa5FsA2i49xLmmWDzUHNVpvDwjv/MOF5Oa1Za9M+rT0tNrbTRovwpxRL/
         8EB7vM3BkrvPngFXS0mvqWAZrhRvPxgyXUyaSi9B+NkdgflyEl2m76A5hAiqkfMsBHdC
         gvjSsY0PPxgBvMF0kueJx2/1vLB+87EN0DcqBO+0O3vy4Xh1pjtxMuDa1YgbWQpoPsq9
         7QwUKNYBUZqL3Kj4Ggr7E1QmzE2pGqjAiPEcYmBIKQrxAzU7Pd61zIFpqVmvPc+7AeBw
         OSXfJGgaoInkoMy0JxNpdz8sys8fKTCrOwfxQarDtLRWALleMWAgRYa0ANZH2WDRtkBn
         aj9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719606846; x=1720211646;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qYPfqbEMN6sw16M9it9ilQpXO99tYg8BSEm27C5utMc=;
        b=F1IKJIXpccxJ70mAYj+6eXsEevHcpb5m+KAf6NpgM7ndXMKuaqka/gxyMm3Us1Nz7p
         Bw/FlWpVgrYpQy9uDolYMSgjvkAyywhm+arB5bLzm6hkVQ8laMtVlQLrrb9t+ufdtNho
         TbMx8tIrTE0aEOB05uGOqTSFm7OwoixHeuTSLYf6wmOA/GXs2WoPL2KNJQ+bXC1ahqkB
         Tjh7jEeEm7f95sjLLoiWZQ9WoaRxL47HPHsENb1eSIxHYInmZcknl0UZru5SAttyxM1t
         yQtjE9LPAag2kQ2ExQg4Bq8oFznvi+Tu44WKJfCPOzOiSGp6uUQDd9QpOUI07A0s2U0K
         HzLA==
X-Forwarded-Encrypted: i=1; AJvYcCVNO5Dau2yE6EorRrCsUflgXDWmERN1/cjhfV+KKNY1iZmMCVo0kTfpMKWzIuELF09bbw+4N+0EzlYgaOM0wDqco+4Qranw5I7AgVHsoLU=
X-Gm-Message-State: AOJu0YwCgW+LbbI3iGEvSE/lUWR6zacKYV6aaOb85PTtU3EaM7ux6dGE
	29DYYzoNzl/kKSm79OYOZGXESih9E0tH5EMNxMXwIRQPohyP/el6NFqAPj240Ow=
X-Google-Smtp-Source: AGHT+IFFEvoaMcKgm5m3TuxTsgOgeGElh1NuxRFHPcJq6Y2G5kPP9VT4kQ/uAp+UHGZaUN6CP8rP/Q==
X-Received: by 2002:a05:6214:4c05:b0:6b5:9fa:3224 with SMTP id 6a1803df08f44-6b54099a199mr179430376d6.13.1719606845881;
        Fri, 28 Jun 2024 13:34:05 -0700 (PDT)
Received: from nicolas-tpx395.mtl.collabora.ca (mtl.collabora.ca. [66.171.169.34])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6b59e36849csm10929706d6.4.2024.06.28.13.34.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Jun 2024 13:34:05 -0700 (PDT)
Message-ID: <32f2d748c6926f57be032c60cecfdc790ea2c1c0.camel@ndufresne.ca>
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Thierry Reding <thierry.reding@gmail.com>, "mripard@kernel.org"
	 <mripard@kernel.org>
Date: Fri, 28 Jun 2024 16:34:03 -0400
In-Reply-To: <72dx7gqentafhwqnfjmosemm35vfl3blqrfiu5skm3cj33eqqu@vj7kmbllgehk>
References: <1050c44512374031d1349b5dced228d0efc3fbde.camel@mediatek.com>
	 <3104b765-5666-44e4-8788-f1b1b296fe17@amd.com>
	 <98c11bad7f40bcc79ed7a2039ddb3a46f99908f5.camel@mediatek.com>
	 <75dc1136-7751-4772-9fa7-dd9124684cd2@amd.com>
	 <ZnxWWtdShekGSUif@phenom.ffwll.local>
	 <ae73a0203d6acf2878c9e3ae2d7554816b9c66ad.camel@mediatek.com>
	 <5739abdb-0234-412a-9f25-49219411bbc6@amd.com>
	 <20240627-impetuous-aboriginal-cougar-cdcbbf@houat>
	 <w3xcvakoytubud6dw4wxr6ntbe6uvfrldihnd26vai6uyyto6j@vcq7gizxolag>
	 <20240628-hypnotic-kagu-of-hurricane-5fbc82@houat>
	 <72dx7gqentafhwqnfjmosemm35vfl3blqrfiu5skm3cj33eqqu@vj7kmbllgehk>
User-Agent: Evolution 3.52.2 (3.52.2-1.fc40) 
MIME-Version: 1.0
X-Rspamd-Queue-Id: 60EF940E1F
X-Spamd-Bar: -
X-Spamd-Result: default: False [-1.80 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_ALLOW(-0.20)[ndufresne-ca.20230601.gappssmtp.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	URIBL_BLOCKED(0.00)[ndufresne-ca.20230601.gappssmtp.com:dkim];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[amd.com,mediatek.com,ffwll.ch,quicinc.com,collabora.com,linaro.org,kernel.org,google.com,deltatee.com,lists.freedesktop.org,emersion.fr,gmail.com,lists.infradead.org,lists.linaro.org,infradead.org,ucw.cz,linux-foundation.org,arm.com,vger.kernel.org];
	R_SPF_NA(0.00)[no SPF record];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[ndufresne.ca];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[36];
	DKIM_TRACE(0.00)[ndufresne-ca.20230601.gappssmtp.com:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.219.54:from];
	TAGGED_RCPT(0.00)[dt];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: 3VAOHPFVTZWYZMLJF42U6ECQTYXSMGBS
X-Message-ID-Hash: 3VAOHPFVTZWYZMLJF42U6ECQTYXSMGBS
X-MailFrom: nicolas@ndufresne.ca
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Jason-JH Lin =?UTF-8?Q?=28=E6=9E=97=E7=9D=BF=E7=A5=A5=29?= <Jason-JH.Lin@mediatek.com>, "daniel@ffwll.ch" <daniel@ffwll.ch>, "quic_vjitta@quicinc.com" <quic_vjitta@quicinc.com>, "angelogioacchino.delregno@collabora.com" <angelogioacchino.delregno@collabora.com>, "sumit.semwal@linaro.org" <sumit.semwal@linaro.org>, "conor+dt@kernel.org" <conor+dt@kernel.org>, "jkardatzke@google.com" <jkardatzke@google.com>, "krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>, "joakim.bech@linaro.org" <joakim.bech@linaro.org>, Youlin Pei =?UTF-8?Q?=28=E8=A3=B4=E5=8F=8B=E6=9E=97=29?= <youlin.pei@mediatek.com>, "logang@deltatee.com" <logang@deltatee.com>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, Kuohong Wang =?UTF-8?Q?=28=E7=8E=8B=E5=9C=8B=E9=B4=BB=29?= <kuohong.wang@mediatek.com>, Jianjiao Zeng =?UTF-8?Q?=28=E6=9B=BE=E5=81=A5=E5=A7=A3=29?= <Jianjiao.Zeng@mediatek.com>, "contact@emersion.fr"
  <contact@emersion.fr>, "benjamin.gaignard@collabora.com" <benjamin.gaignard@collabora.com>, "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>, "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "willy@infradead.org" <willy@infradead.org>, "pavel@ucw.cz" <pavel@ucw.cz>, "akpm@linux-foundation.org" <akpm@linux-foundation.org>, "Brian.Starkey@arm.com" <Brian.Starkey@arm.com>, "robh+dt@kernel.org" <robh+dt@kernel.org>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, "tjmercier@google.com" <tjmercier@google.com>, "jstultz@google.com" <jstultz@google.com>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, "robin.murphy@arm.com" <robin.murphy@arm.com>, Yong Wu =?UTF-8?Q?=28=E5=90=B4=E5=8B=87=29?= <Yong.Wu@mediatek.com>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "ppaalanen@gmail.c
 om" <ppaalanen@gmail.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 2/9] scatterlist: Add a flag for the restricted memory
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3VAOHPFVTZWYZMLJF42U6ECQTYXSMGBS/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgVGhpZXJyeSwNCg0KTGUgdmVuZHJlZGkgMjgganVpbiAyMDI0IMOgIDE2OjExICswMjAwLCBU
aGllcnJ5IFJlZGluZyBhIMOpY3JpdMKgOg0KPiBPbiBGcmksIEp1biAyOCwgMjAyNCBhdCAwMzoy
MTo1MVBNIEdNVCwgbXJpcGFyZEBrZXJuZWwub3JnIHdyb3RlOg0KPiA+IE9uIEZyaSwgSnVuIDI4
LCAyMDI0IGF0IDAxOjQ3OjAxUE0gR01ULCBUaGllcnJ5IFJlZGluZyB3cm90ZToNCj4gPiA+IE9u
IFRodSwgSnVuIDI3LCAyMDI0IGF0IDA0OjQwOjAyUE0gR01ULCBtcmlwYXJkQGtlcm5lbC5vcmcg
d3JvdGU6DQo+ID4gPiA+IE9uIFRodSwgSnVuIDI3LCAyMDI0IGF0IDA4OjU3OjQwQU0gR01ULCBD
aHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPiA+ID4gPiA+IEFtIDI3LjA2LjI0IHVtIDA1OjIxIHNj
aHJpZWIgSmFzb24tSkggTGluICjmnpfnnb/npaUpOg0KPiA+ID4gPiA+ID4gDQo+ID4gPiA+ID4g
PiBPbiBXZWQsIDIwMjQtMDYtMjYgYXQgMTk6NTYgKzAyMDAsIERhbmllbCBWZXR0ZXIgd3JvdGU6
DQo+ID4gPiA+ID4gPiA+ICAgPiBFeHRlcm5hbCBlbWFpbCA6IFBsZWFzZSBkbyBub3QgY2xpY2sg
bGlua3Mgb3Igb3BlbiBhdHRhY2htZW50cw0KPiA+ID4gPiA+ID4gdW50aWwNCj4gPiA+ID4gPiA+
ID4geW91IGhhdmUgdmVyaWZpZWQgdGhlIHNlbmRlciBvciB0aGUgY29udGVudC4NCj4gPiA+ID4g
PiA+ID4gIE9uIFdlZCwgSnVuIDI2LCAyMDI0IGF0IDEyOjQ5OjAyUE0gKzAyMDAsIENocmlzdGlh
biBLw7ZuaWcgd3JvdGU6DQo+ID4gPiA+ID4gPiA+ID4gQW0gMjYuMDYuMjQgdW0gMTA6MDUgc2No
cmllYiBKYXNvbi1KSCBMaW4gKOael+edv+elpSk6DQo+ID4gPiA+ID4gPiA+ID4gPiA+ID4gSSB0
aGluayBJIGhhdmUgdGhlIHNhbWUgcHJvYmxlbSBhcyB0aGUgRUNDX0ZMQUcgbWVudGlvbiBpbjoN
Cj4gPiA+ID4gPiA+ID4gPiA+ID4gPiA+ID4gPiBodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51
eC1tZWRpYS8yMDI0MDUxNS1kbWEtYnVmLWVjYy1oZWFwLXYxLTAtNTRjYmJkMDQ5NTExQGtlcm5l
bC5vcmcvDQo+ID4gPiA+ID4gPiA+ID4gPiA+ID4gPiA+IEkgdGhpbmsgaXQgd291bGQgYmUgYmV0
dGVyIHRvIGhhdmUgdGhlIHVzZXIgY29uZmlndXJhYmxlDQo+ID4gPiA+ID4gPiA+IHByaXZhdGUN
Cj4gPiA+ID4gPiA+ID4gPiA+ID4gPiBpbmZvcm1hdGlvbiBpbiBkbWEtYnVmLCBzbyBhbGwgdGhl
IGRyaXZlcnMgd2hvIGhhdmUgdGhlIHNhbWUNCj4gPiA+ID4gPiA+ID4gPiA+ID4gPiByZXF1aXJl
bWVudCBjYW4gZ2V0IHRoZWlyIHByaXZhdGUgaW5mb3JtYXRpb24gZnJvbSBkbWEtYnVmDQo+ID4g
PiA+ID4gPiA+IGRpcmVjdGx5DQo+ID4gPiA+ID4gPiA+ID4gPiA+ID4gYW5kDQo+ID4gPiA+ID4g
PiA+ID4gPiA+ID4gbm8gbmVlZCB0byBjaGFuZ2Ugb3IgYWRkIHRoZSBpbnRlcmZhY2UuDQo+ID4g
PiA+ID4gPiA+ID4gPiA+ID4gPiA+IFdoYXQncyB5b3VyIG9waW5pb24gaW4gdGhpcyBwb2ludD8N
Cj4gPiA+ID4gPiA+ID4gPiA+ID4gID4gV2VsbCBvZiBoYW5kIEkgZG9uJ3Qgc2VlIHRoZSBuZWVk
IGZvciB0aGF0Lg0KPiA+ID4gPiA+ID4gPiA+ID4gPiA+IFdoYXQgaGFwcGVucyBpZiB5b3UgZ2V0
IGEgbm9uLXNlY3VyZSBidWZmZXIgaW1wb3J0ZWQgaW4geW91cg0KPiA+ID4gPiA+ID4gPiBzZWN1
cmUNCj4gPiA+ID4gPiA+ID4gPiA+ID4gZGV2aWNlPw0KPiA+ID4gPiA+ID4gPiA+ID4gPiA+ID4g
V2UgdXNlIHRoZSBzYW1lIG1lZGlhdGVrLWRybSBkcml2ZXIgZm9yIHNlY3VyZSBhbmQNCj4gPiA+
ID4gPiA+IG5vbi1zZWN1cmUNCj4gPiA+ID4gPiA+ID4gYnVmZmVyLg0KPiA+ID4gPiA+ID4gPiA+
ID4gSWYgbm9uLXNlY3VyZSBidWZmZXIgaW1wb3J0ZWQgdG8gbWVkaWF0ZWstZHJtIGRyaXZlciwg
aXQncyBnbyB0bw0KPiA+ID4gPiA+ID4gPiB0aGUNCj4gPiA+ID4gPiA+ID4gPiA+IG5vcm1hbCBm
bG93IHdpdGggbm9ybWFsIGhhcmR3YXJlIHNldHRpbmdzLg0KPiA+ID4gPiA+ID4gPiA+ID4gPiA+
ID4gV2UgdXNlIGRpZmZlcmVudCBjb25maWd1cmF0aW9ucyB0byBtYWtlIGhhcmR3YXJlIGhhdmUN
Cj4gPiA+ID4gPiA+IGRpZmZlcmVudA0KPiA+ID4gPiA+ID4gPiA+ID4gcGVybWlzc2lvbiB0byBh
Y2Nlc3MgdGhlIGJ1ZmZlciBpdCBzaG91bGQgYWNjZXNzLg0KPiA+ID4gPiA+ID4gPiA+ID4gPiA+
ID4gU28gaWYgd2UgY2FuJ3QgZ2V0IHRoZSBpbmZvcm1hdGlvbiBvZiAidGhlIGJ1ZmZlciBpcw0K
PiA+ID4gPiA+ID4gYWxsb2NhdGVkDQo+ID4gPiA+ID4gPiA+IGZyb20NCj4gPiA+ID4gPiA+ID4g
PiA+IHJlc3RyaWN0ZWRfbXRrX2NtYSIgd2hlbiBpbXBvcnRpbmcgdGhlIGJ1ZmZlciBpbnRvIHRo
ZSBkcml2ZXIsIHdlDQo+ID4gPiA+ID4gPiA+IHdvbid0DQo+ID4gPiA+ID4gPiA+ID4gPiBiZSBh
YmxlIHRvIGNvbmZpZ3VyZSB0aGUgaGFyZHdhcmUgY29ycmVjdGx5Lg0KPiA+ID4gPiA+ID4gPiA+
ID4gPiBXaHkgY2FuJ3QgeW91IGdldCB0aGlzIGluZm9ybWF0aW9uIGZyb20gdXNlcnNwYWNlPw0K
PiA+ID4gPiA+ID4gPiA+IFNhbWUgcmVhc29uIGFtZCBhbmQgaTkxNS94ZSBhbHNvIHBhc3MgdGhp
cyBhcm91bmQgaW50ZXJuYWxseSBpbiB0aGUNCj4gPiA+ID4gPiA+ID4ga2VybmVsLCBpdCdzIGp1
c3QgdGhhdCBmb3IgdGhvc2UgZ3B1cyB0aGUgcmVuZGVyIGFuZCBrbXMgbm9kZSBhcmUgdGhlDQo+
ID4gPiA+ID4gPiA+IHNhbWUNCj4gPiA+ID4gPiA+ID4gZHJpdmVyIHNvIHRoaXMgaXMgZWFzeS4N
Cj4gPiA+ID4gPiA+ID4gDQo+ID4gPiA+ID4gDQo+ID4gPiA+ID4gVGhlIHJlYXNvbiBJIGFzayBp
cyB0aGF0IGVuY3J5cHRpb24gaGVyZSBsb29rcyBqdXN0IGxpa2UgYW5vdGhlciBwYXJhbWV0ZXIN
Cj4gPiA+ID4gPiBmb3IgdGhlIGJ1ZmZlciwgZS5nLiBsaWtlIGZvcm1hdCwgc3RyaWRlLCB0aWxs
aW5nIGV0Yy4uDQo+ID4gPiA+ID4gDQo+ID4gPiA+ID4gU28gaW5zdGVhZCBvZiB0aGlzIGR1cmlu
ZyBidWZmZXIgaW1wb3J0Og0KPiA+ID4gPiA+IA0KPiA+ID4gPiA+IG10a19nZW0tPnNlY3VyZSA9
ICghc3RybmNtcChhdHRhY2gtPmRtYWJ1Zi0+ZXhwX25hbWUsICJyZXN0cmljdGVkIiwgMTApKTsN
Cj4gPiA+ID4gPiBtdGtfZ2VtLT5kbWFfYWRkciA9IHNnX2RtYV9hZGRyZXNzKHNnLT5zZ2wpOw0K
PiA+ID4gPiA+IG10a19nZW0tPnNpemUgPSBhdHRhY2gtPmRtYWJ1Zi0+c2l6ZTsNCj4gPiA+ID4g
PiBtdGtfZ2VtLT5zZyA9IHNnOw0KPiA+ID4gPiA+IA0KPiA+ID4gPiA+IFlvdSBjYW4gdHJpdmlh
bGx5IHNheSBkdXJpbmcgdXNlIGhleSB0aGlzIGJ1ZmZlciBpcyBlbmNyeXB0ZWQuDQo+ID4gPiA+
ID4gDQo+ID4gPiA+ID4gQXQgbGVhc3QgdGhhdCdzIG15IDEwIG1pbGUgaGlnaCB2aWV3LCBtYXli
ZSBJJ20gbWlzc2luZyBzb21lIGV4dGVuc2l2ZSBrZXkNCj4gPiA+ID4gPiBleGNoYW5nZSBvciBz
b21ldGhpbmcgbGlrZSB0aGF0Lg0KPiA+ID4gPiANCj4gPiA+ID4gVGhhdCBkb2Vzbid0IHdvcmsg
aW4gYWxsIGNhc2VzLCB1bmZvcnR1bmF0ZWx5Lg0KPiA+ID4gPiANCj4gPiA+ID4gSWYgeW91J3Jl
IGRvaW5nIHNlY3VyZSB2aWRlbyBwbGF5YmFjaywgdGhlIGZpcm13YXJlIGlzIHR5cGljYWxseSBp
bg0KPiA+ID4gPiBjaGFyZ2Ugb2YgdGhlIGZyYW1lIGRlY3J5cHRpb24vZGVjb2RpbmcsIGFuZCB5
b3UnZCBnZXQgZG1hLWJ1ZiBiYWNrIHRoYXQNCj4gPiA+ID4gYXJlbid0IGFjY2Vzc2libGUgYnkg
dGhlIENQVSAob3IgYXQgbGVhc3QsIG5vdCBhdCB0aGUgZXhlY3V0aW9uIGxldmVsDQo+ID4gPiA+
IExpbnV4IHJ1bnMgd2l0aCkuDQo+ID4gPiANCj4gPiA+IENhbiB5b3UgY2xhcmlmeSB3aGljaCBm
aXJtd2FyZSB5b3UncmUgdGFsa2luZyBhYm91dD8gSXMgdGhpcyBzZWN1cmUNCj4gPiA+IGZpcm13
YXJlLCBvciBmaXJtd2FyZSBydW5uaW5nIG9uIHRoZSB2aWRlbyBkZWNvZGluZyBoYXJkd2FyZT8N
Cj4gPiANCj4gPiBTZWN1cmUgZmlybXdhcmUNCj4gDQo+IEFoLi4uIGludGVyZXN0aW5nLiBTbyB5
b3UgYWN0dWFsbHkgbmVlZCB0byBpbnRlcm9wIHdpdGggdGhhdCBmaXJtd2FyZSBpbg0KPiBvcmRl
ciB0byBzdGFydCBkZWNyeXB0aW9uL2RlY29kaW5nLiBUaGF0J3MgcXVpdGUgZGlmZmVyZW50IGZy
b20gaG93IHRoaXMNCj4gd29ya3Mgb24gVGVncmEuIFdlbGwsIG1heWJlIG5vdCBlbnRpcmVseS4g
Rm9yIFRlZ3JhIHRoZXJlIGlzIGZpcm13YXJlDQo+IHRoYXQgcnVucyBvbiB0aGUgaGFyZHdhcmUg
ZGVjb2RlciBhbmQgd2hpY2ggaGFzIGFjY2VzcyB0byB0aGUga2V5cywgc28NCj4gaW4gdGhhdCB3
YXkgSSBndWVzcyBpdCdzIHNpbWlsYXIgdG8geW91ciB1c2UtY2FzZSwgZXhjZXB0IHRoZSBmaXJt
d2FyZQ0KPiBydW5zIG9uIGEgZGlmZmVyZW50IGNoaXAuDQoNClRoYXQgaXMgc29tZXRoaW5nIGlu
dGVyZXN0aW5nIGZvciB0aGUgbGludXgtbWVkaWEgZGlzY3Vzc2lvbnMgdG9vLiBTbyBpbiBvbmUN
CmNhc2UsIHlvdSBoYXZlIGEgc2VwZXJhdGUgVEYtQSBpbiB0aGUgc2VjdXJlIGZpcm13YXJlIGZv
bGxvd2luZyB0aGUgQ0RNDQpzcGVjaWZpY2F0aW9uLCBhbmQgaXQgZ2l2ZXMgeW91IGJhY2sgYSBy
ZXN0cmljdGVkIGJpdHN0cmVhbSBidWZmZXIuIFlvdSB0aGVuDQpkb24ndCBuZWVkIGFueSBDRE0g
c3BlY2lmaWMgc2Vzc2lvbi9rZXkgaW5mb3JtYXRpb24gaW50byB0aGUgQ09ERUMgZHJpdmVyLg0K
DQpCdXQgaW4gdGhlIGNhc2Ugb2YgVGVncmEsIGl0IHdvdWxkIG1lYW4gdGhlIENPREVDIGRyaXZl
ciBpcyBub3QgYWdub3N0aWMgdG8gdGhlDQpDRE0sIHNvIHdlIGNhbiBleHBlY3QgKGlmIHRoaXMg
ZW5kdXAgYXMgYSBWNEwyIGRyaXZlcikgc29tZSBjb250cm9scyBmb3INCldpZGV3aW5lLCBQbGF5
cmVhZHkgYW5kIG90aGVyIENETSA/IChhZGRpbmcgZXhwbGljaXQgQ0RNIEFQSSBpbiB0aGUga2Vy
bmVsIGlzIGENCmhvdCBwb3RhdG8gaW1obywgSSBteXNlbGYgd291bGQgdHJ5IGFuZCBzdGF5IGF3
YXkgZnJvbSB0aGF0IGF0IGFsbCBjb3N0LCBhbmQNCmZvY3VzIG9uIHJlc3RyaWN0ZWQgc3RvcmFn
ZSBmZWF0dXJlIG9ubHkpLg0KDQpOaWNvbGFzDQoNCg0KPiA+ID4gPiBTbyBub2JvZHkgY2FuIG1h
cCB0aGF0IGJ1ZmZlciwgYW5kIHRoZSBmaXJtd2FyZSBkcml2ZXIgaXMgdGhlIG9uZSB3aG8NCj4g
PiA+ID4ga25vd3MgdGhhdCB0aGlzIGJ1ZmZlciBjYW5ub3QgYmUgYWNjZXNzZWQgYnkgYW55b25l
LiBQdXR0aW5nIHRoaXMgb24gdGhlDQo+ID4gPiA+IHVzZXJzcGFjZSB0byBrbm93IHdvdWxkIGJl
IHByZXR0eSB3ZWlyZCwgYW5kIHdvdWxkbid0IHNvbHZlIHRoZSBjYXNlDQo+ID4gPiA+IHdoZXJl
IHRoZSBrZXJuZWwgd291bGQgdHJ5IHRvIG1hcCBpdC4NCj4gPiA+IA0KPiA+ID4gRG9lc24ndCB1
c2Vyc3BhY2UgbmVlZCB0byBrbm93IGZyb20gdGhlIHN0YXJ0IHdoZXRoZXIgaXQncyB0cnlpbmcg
dG8gZG8NCj4gPiA+IHNlY3VyZSBwbGF5YmFjayBvciBub3Q/DQo+ID4gDQo+ID4gSXQgZG9lcywg
YnV0IGl0IHdvbid0IGtub3cgdGhlIGNhcGFiaWxpdGllcyBvZiB0aGUgYnVmZmVyIGl0IGdldHMg
YmFjaw0KPiA+IGZyb20gdGhlIHNlY3VyZSBmaXJtd2FyZS4NCj4gDQo+IEkgdGhpbmsgdGhhdCdz
IGtpbmQgb2YgdGhlIHBvaW50LiBEb2VzIGl0IHJlYWxseSBoYXZlIHRvIGtub3cgdGhlDQo+IGNh
cGFiaWxpdGllcz8gSXNuJ3QgaXQgZW5vdWdoIHRvIGtub3cgdGhhdCBpdCdzIGdvdCBzb21lIHNv
cnQgb2YNCj4gcHJvdGVjdGVkIGJ1ZmZlciBiYWNrIGFuZCB0aGVuIHVzZSBpdCBtb3JlIG9yIGxl
c3MgYmxpbmRseT8gSSBtZWFuDQo+IHRoZXNlIGFyZSB0aGluZ3MgdGhhdCBoYXZlIHRvIGJlIHRp
Z2h0bHkgY291cGxlZCBubyBtYXR0ZXIgd2hhdCwgc28NCj4gaG93IG11Y2ggcG9pbnQgaXMgdGhl
cmUgaW4gdHJ5aW5nIHRvIHZhbGlkYXRlIHdoYXQgeW91IGdldD8NCj4gDQo+ID4gPiBUeXBpY2Fs
bHkgdGhpcyBpbnZvbHZlcyBtb3JlIHRoYW4ganVzdCB0aGUgZGVjb2RpbmcgcGFydC4gWW91J2QN
Cj4gPiA+IHR5cGljYWxseSBzZXQgdXAgdGhpbmdzIGxpa2UgSERDUCBhcyBwYXJ0IG9mIHRoZSBw
cm9jZXNzLCBzbyB1c2Vyc3BhY2UNCj4gPiA+IHByb2JhYmx5IGFscmVhZHkgZG9lcyBrbm93IHRo
YXQgdGhlIGJ1ZmZlcnMgYmVpbmcgcGFzc2VkIGFyb3VuZCBhcmUNCj4gPiA+IHByb3RlY3RlZC4N
Cj4gPiA+IA0KPiA+ID4gQWxzbywgdGhlIGtlcm5lbCBzaG91bGRuJ3QgcmVhbGx5IGJlIG1hcHBp
bmcgdGhlc2UgYnVmZmVycyB1bmxlc3MNCj4gPiA+IGV4cGxpY2l0bHkgdG9sZCB0by4gSW4gbW9z
dCBjYXNlcyB5b3UgYWxzbyB3b3VsZG4ndCB3YW50IHRoZSBrZXJuZWwgdG8NCj4gPiA+IG1hcCB0
aGVzZSBraW5kcyBvZiBidWZmZXJzLCByaWdodD8gQXJlIHRoZXJlIGFueSBzcGVjaWZpYyBjYXNl
cyB3aGVyZQ0KPiA+ID4geW91IGV4cGVjdCB0aGUga2VybmVsIHRvIG5lZWQgdG8gbWFwIHRoZXNl
Pw0KPiA+ID4gDQo+ID4gPiBJJ3ZlIGJlZW4gbG9va2luZyBhdCB0aGlzIG9uIHRoZSBUZWdyYSBz
aWRlIHJlY2VudGx5IGFuZCB0aGUgd2F5IGl0DQo+ID4gPiB3b3JrcyBvbiB0aGVzZSBjaGlwcyBp
cyB0aGF0IHlvdSBiYXNpY2FsbHkgZ2V0IGFuIG9wYXF1ZSBjYXJ2ZW91dCByZWdpb24NCj4gPiA+
IHRoYXQgaGFzIGJlZW4gbG9ja2VkIGRvd24gYnkgc2VjdXJlIGZpcm13YXJlIG9yIGVhcmx5IGJv
b3Rsb2FkZXJzLCBzbw0KPiA+ID4gb25seSBjZXJ0YWluIGhhcmR3YXJlIGJsb2NrcyBjYW4gYWNj
ZXNzIGl0LiBXZSBjYW4gYWxsb2NhdGUgZnJvbSB0aGF0DQo+ID4gPiBjYXJ2ZW91dCBhbmQgdGhl
biBwYXNzIHRoZSBidWZmZXJzIGFyb3VuZC4NCj4gPiANCj4gPiBTbyB5b3UgYWxsb2NhdGUgYm90
aCB0aGUgaW5wdXQgYW5kIG91dHB1dCBidWZmZXJzIChhbmQgZnJvbSBkaWZmZXJlbnQNCj4gPiBy
ZWdpb25zKSBmcm9tIHRoZSBhcHBsaWNhdGlvbiwgYW5kIHBhc3MgYm90aCB0byB0aGUgc2VjdXJl
IGZpcm13YXJlPw0KPiA+IA0KPiA+IFllYWgsIEkgZ3Vlc3MgdGhhdCB3b3VsZCB3b3JrIHRoZW4u
DQo+IA0KPiBJdCBkb2Vzbid0IHJlYWxseSBtYXR0ZXIgd2hvIGFsbG9jYXRlcyB0aGUgYnVmZmVy
cy4gSXQgY291bGQgYmUgdGhlDQo+IGFwcGxpY2F0aW9uIGFsbG9jYXRpbmcgdGhlIHNjYW5vdXQg
YnVmZmVyIGZyb20gYSBEUk0vS01TIGRldmljZSBhbmQgdGhlDQo+IGlucHV0IGJ1ZmZlciBmcm9t
IHRoZSBtdWx0aW1lZGlhIGRlY29kZXIuIE9yIGl0IGNvdWxkIGJlIHRoZSBhcHBsaWNhdGlvbg0K
PiBhbGxvY2F0aW5nIGJvdGggYnVmZmVycyBmcm9tIGRpZmZlcmVudCBETUEtQlVGIGhlYXBzLiBJ
biB0aGUgZW5kIGl0DQo+IHNob3VsZG4ndCByZWFsbHkgbWF0dGVyIHdoZXJlIHRoZXkgYXJlIGNv
bWluZyBmcm9tLiBJdCdzIGVmZmVjdGl2ZWx5IHVwDQo+IHRvIHRoZSBhcHBsaWNhdGlvbiB0byBw
YXNzIHRoZSByaWdodCBidWZmZXJzIGludG8gdGhlIHJpZ2h0IElPQ1RMcy4NCj4gDQo+ID4gPiBJ
dCBtYXkgYmUgcG9zc2libGUgdG8gdXNlIHRoZXNlIHByb3RlY3RlZCBjYXJ2ZW91dCByZWdpb25z
IGV4Y2x1c2l2ZWx5DQo+ID4gPiBmcm9tIHRoZSBEUk0vS01TIGRyaXZlciBhbmQgc2hhcmUgdGhl
bSB3aXRoIG11bHRpbWVkaWEgZW5naW5lcyB2aWEgRE1BLQ0KPiA+ID4gQlVGLCBidXQgSSd2ZSBh
bHNvIGJlZW4gbG9va2luZyBpbnRvIHBlcmhhcHMgdXNpbmcgRE1BLUJVRiBoZWFwcyB0bw0KPiA+
ID4gZXhwb3NlIHRoZSBjYXJ2ZW91dCwgd2hpY2ggd291bGQgbWFrZSB0aGlzIGEgYml0IG1vcmUg
ZmxleGlibGUgYW5kIGFsbG93DQo+ID4gPiBlaXRoZXIgdXNlcnNwYWNlIHRvIGFsbG9jYXRlIHRo
ZSBidWZmZXJzIG9yIGhhdmUgbXVsdGlwbGUga2VybmVsIGRyaXZlcnMNCj4gPiA+IHNoYXJlIHRo
ZSBjYXJ2ZW91dCB2aWEgdGhlIERNQS1CVUYgaGVhcC4gVGhvdWdoIHRoZSBsYXR0ZXIgd291bGQg
cmVxdWlyZQ0KPiA+ID4gdGhhdCB0aGVyZSBiZSBpbi1rZXJuZWwgQVBJcyBmb3IgaGVhcHMsIHNv
IG5vdCB0b28gc3VyZSBhYm91dCB0aGF0IHlldC4NCj4gPiANCj4gPiBXaGF0IHdvdWxkIGJlIHRo
ZSBhZHZhbnRhZ2Ugb2YgdXNpbmcgYSBoZWFwIGNvbXBhcmVkIHRvIGhhdmluZyBhbGwgdGhlc2UN
Cj4gPiBkZXZpY2VzIGluIERUIHVzZSB0aGUgcmVzZXJ2ZWQtbWVtb3J5IHByb3BlcnR5IGFuZCBw
b2ludCB0byB0aGF0DQo+ID4gY2FydmVvdXQ/IEl0IHNob3VsZCBhbHJlYWR5IHdvcmsgdG9kYXku
DQo+IA0KPiBZb3UgY2FuJ3QganVzdCBoYXZlIGFsbCBvZiB0aGVzZSBwb2ludCB0byBhIGNvbW1v
biByZXNlcnZlZC1tZW1vcnkgbm9kZQ0KPiBiZWNhdXNlIHRoZXJlIGNhbiBiZSBtdWx0aXBsZSBj
b25jdXJyZW50IHVzZXJzLiBZb3UgY291bGQgaGF2ZSBtdWx0aXBsZQ0KPiBwcm90ZWN0ZWQgc3Ry
ZWFtcyBydW5uaW5nIGF0IHRoZSBzYW1lIHRpbWUuIERNQS1CVUYgaGVhcHMgYWxsb3dzIHVzIHRv
DQo+IGV4cG9zZSBhIGNlbnRyYWwgcHJvdmlkZXIgZm9yIHRoZSBwcm90ZWN0ZWQgbWVtb3J5IHNv
IHRoYXQgYWxsb2NhdGlvbnMNCj4gY2FuIGJlIHByb3Blcmx5IGFyYml0cmF0ZWQuDQo+IA0KPiBU
aGllcnJ5DQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJv
Lm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVA
bGlzdHMubGluYXJvLm9yZwo=
