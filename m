Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C2ECFA93993
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 18 Apr 2025 17:25:54 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5EB194425C
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 18 Apr 2025 15:25:53 +0000 (UTC)
Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com [209.85.160.175])
	by lists.linaro.org (Postfix) with ESMTPS id 081DE3F534
	for <linaro-mm-sig@lists.linaro.org>; Fri, 18 Apr 2025 15:25:38 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=Cz15GK5d;
	spf=pass (lists.linaro.org: domain of tjmercier@google.com designates 209.85.160.175 as permitted sender) smtp.mailfrom=tjmercier@google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-qt1-f175.google.com with SMTP id d75a77b69052e-47666573242so481771cf.0
        for <linaro-mm-sig@lists.linaro.org>; Fri, 18 Apr 2025 08:25:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1744989937; x=1745594737; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KLMQ/sPbd3/qPx9kvWI7kwA5vqce0csvK2YZ+gn9jtw=;
        b=Cz15GK5dLzF6DB2ruIuJhFj1UPTukEetEJPl7VM9nMZxm3ihHFwcuz5YxrqYMskDgn
         NCnjmd1RG6hovEeKwbm9OFCwpD0FRcxREbKwIMQphfxrZMnqK7mJ3vAPCBG0vtMTtmdR
         SDiDC03Q5eokynNaaXvoBl8xXsj9fm+/RUrDtHr0D0rrlFliIXbmTj+rqfxpOmGQqfJC
         3xPQrxwJSJOy9l10cP+nfiHjH+yrYr0b7/AEQJ5DVoHPa2gWo2/L+11R0bJYWdpsSA65
         0wAiNwo1/Ey0W3d3E8kfL+vJpMQkqg+OQkX3NS2xo+ffFb/iYYF1cmnAr09Et8lF3n72
         XV7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744989937; x=1745594737;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KLMQ/sPbd3/qPx9kvWI7kwA5vqce0csvK2YZ+gn9jtw=;
        b=ZhDK5lgqUDzfhft07EhC+P9llsUEXJAADkBcVXY2BYBx7n+4e7Ihq0u9/ni4DK13vW
         fptodOANBtiOnQHKOiYFDfkntk775EsLEnCXfU5eJF/HOOPCE8+HQYInnBFH14iQdz3b
         Zn1siSx7262ZlT6j9srZ5qYcWFTEaHHNklkEVlIRVOp284JgrqDoeEHxMXOqkaBFlf40
         AZ/i0NvyODL34V/I/PoLelYLh239GSrwahE3IRPyAI6SpnoVV4ZCiO6K2SNe61xcQ0p0
         nUb7+fxXaEWEvXWi9IP+2dnPfjJE6l4FOKT5mMu1435W/tNLyBuLHIH4SQXJelJ/Ve6h
         cDqw==
X-Forwarded-Encrypted: i=1; AJvYcCXwOuqKk5frGM7tXE98ievddvCrmkvsAccSGAZ/0WiLYBjTF988O1ivouP/hHoe2jQUSpuugs1UjTtD2FRc@lists.linaro.org
X-Gm-Message-State: AOJu0Ywkgp0id03g9s+kaDmas21ZzCJQg28t0E9NohS0eyRPEWyVa/OY
	bdgafAcNi1UmxRy0EugIe/vrU4cYFmeav7RfhY+YQ7NfZUMNdfrkcI9InHQ8JLxHYvidfURtYmk
	sdaC+HafeNvgtATaUju44stwHgOdtBHgf0A7J
X-Gm-Gg: ASbGncti0LiwbNq9Eay9oIyXAn+6zFORQNSAkPmsRq81ZciKKAxK9uYFj8CbJsM7QyQ
	QSeWjRRvMcrdj9kzJm6Xc5MfspqvZtOdrHAoezY4vxsL/oa7nA5HtaOw0X1HYNOZT7lPrjYtZuw
	6sE4vzUxRBqXAMAdBT8/t4
X-Google-Smtp-Source: AGHT+IG8hFCpUPixQxkgnzGIXz1u9OtkRLiT9un/wX7YdVEX+ucM013ElGjUErTcY8lmL4vrTIPIJfqi3eMA/XDrm6c=
X-Received: by 2002:a05:622a:24f:b0:477:63b7:3523 with SMTP id
 d75a77b69052e-47aeb10f6a4mr3977681cf.4.1744989937094; Fri, 18 Apr 2025
 08:25:37 -0700 (PDT)
MIME-Version: 1.0
References: <20250414225227.3642618-1-tjmercier@google.com>
 <20250414225227.3642618-3-tjmercier@google.com> <CAPhsuW6sgGvjeAcciskmGO7r6+eeDo_KVS3y7C8fCDPptzCebw@mail.gmail.com>
 <CABdmKX0bgxZFYuvQvQPK0AnAHEE3FebY_eA1+Vo=ScH1MbfzMg@mail.gmail.com>
 <CAPhsuW72Q2--E9tQQY8xADghTV6bYy9vHpFQoCWNh0V_QBWafA@mail.gmail.com>
 <CABdmKX1tDv3fSFURDN7=txFSbQ1xTjp8ZhLP8tFAvLcO9_-4_A@mail.gmail.com>
 <CAPhsuW7xvSYjWvy8K9Ev_tMwDRy2dpEiBcHYai3n-wAa0xvLow@mail.gmail.com>
 <CABdmKX1p0KgbipTSW1Ywi4bTBabQmsg21gA14Bp5atYHg8FeXQ@mail.gmail.com>
 <CAPhsuW4f2=M_K553+BVnGJq=ddZ7sXj4CfCAHeYQ=4cpihBCzA@mail.gmail.com>
 <CABdmKX0P1tpa-jxzN1_TCyk6Cw6drYM+KRZQ5YQcjNOBFtOFJw@mail.gmail.com> <CAPhsuW5bgBNu6zY0rn7ZH4VK54nruryU4bS4LrDDsxnCfqQicQ@mail.gmail.com>
In-Reply-To: <CAPhsuW5bgBNu6zY0rn7ZH4VK54nruryU4bS4LrDDsxnCfqQicQ@mail.gmail.com>
From: "T.J. Mercier" <tjmercier@google.com>
Date: Fri, 18 Apr 2025 08:25:18 -0700
X-Gm-Features: ATxdqUFe9V2DPeKz_fCeXdwNGaeIYNCwZNnBebHg8eIdjjPIFTp9wITPuXs7j_A
Message-ID: <CABdmKX3XaVFJEQRav1COi7_1rkMsx1ZhrJoGLB_wtywZ0O-jug@mail.gmail.com>
To: Song Liu <song@kernel.org>
X-Rspamd-Queue-Id: 081DE3F534
X-Spamd-Bar: /
X-Spamd-Result: default: False [-1.00 / 15.00];
	BAYES_HAM(-3.00)[99.98%];
	SUSPICIOUS_RECIPS(1.50)[];
	RBL_SENDERSCORE_REPUT_7(0.50)[209.85.160.175:from];
	MIME_GOOD(-0.10)[text/plain];
	BAD_REP_POLICIES(0.10)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[25];
	R_SPF_ALLOW(0.00)[+ip4:209.85.128.0/17];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_ONE(0.00)[1];
	MISSING_XM_UA(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.160.175:from];
	DMARC_POLICY_ALLOW(0.00)[google.com,reject];
	NEURAL_HAM(-0.00)[-0.919];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[linaro.org,amd.com,kernel.org,iogearbox.net,linux.dev,linuxfoundation.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,google.com,ffwll.ch,lwn.net,gmail.com,fomichev.me,fb.com];
	TAGGED_RCPT(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	R_DKIM_ALLOW(0.00)[google.com:s=20230601];
	DKIM_TRACE(0.00)[google.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: GXZLSRKXCS26ZROEWBIHYXCF4ODRY7UK
X-Message-ID-Hash: GXZLSRKXCS26ZROEWBIHYXCF4ODRY7UK
X-MailFrom: tjmercier@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: sumit.semwal@linaro.org, christian.koenig@amd.com, ast@kernel.org, daniel@iogearbox.net, andrii@kernel.org, martin.lau@linux.dev, skhan@linuxfoundation.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-doc@vger.kernel.org, bpf@vger.kernel.org, linux-kselftest@vger.kernel.org, android-mm@google.com, simona@ffwll.ch, corbet@lwn.net, eddyz87@gmail.com, yonghong.song@linux.dev, john.fastabend@gmail.com, kpsingh@kernel.org, sdf@fomichev.me, jolsa@kernel.org, mykolal@fb.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 2/4] bpf: Add dmabuf iterator
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/GXZLSRKXCS26ZROEWBIHYXCF4ODRY7UK/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVGh1LCBBcHIgMTcsIDIwMjUgYXQgMToyNuKAr1BNIFNvbmcgTGl1IDxzb25nQGtlcm5lbC5v
cmc+IHdyb3RlOg0KPg0KPiBPbiBUaHUsIEFwciAxNywgMjAyNSBhdCA5OjA14oCvQU0gVC5KLiBN
ZXJjaWVyIDx0am1lcmNpZXJAZ29vZ2xlLmNvbT4gd3JvdGU6DQo+ID4NCj4gPiBPbiBXZWQsIEFw
ciAxNiwgMjAyNSBhdCA5OjU24oCvUE0gU29uZyBMaXUgPHNvbmdAa2VybmVsLm9yZz4gd3JvdGU6
DQo+ID4gPg0KPiA+ID4gT24gV2VkLCBBcHIgMTYsIDIwMjUgYXQgNzowOeKAr1BNIFQuSi4gTWVy
Y2llciA8dGptZXJjaWVyQGdvb2dsZS5jb20+IHdyb3RlOg0KPiA+ID4gPg0KPiA+ID4gPiBPbiBX
ZWQsIEFwciAxNiwgMjAyNSBhdCA2OjI24oCvUE0gU29uZyBMaXUgPHNvbmdAa2VybmVsLm9yZz4g
d3JvdGU6DQo+ID4gPiBbLi4uXQ0KPiA+ID4gPiA+DQo+ID4gPiA+ID4gSGVyZSBpcyBhbm90aGVy
IHJvb2tpZSBxdWVzdGlvbiwgaXQgYXBwZWFycyB0byBtZSB0aGVyZSBpcyBhIGZpbGUgZGVzY3Jp
cHRvcg0KPiA+ID4gPiA+IGFzc29jaWF0ZWQgd2l0aCBlYWNoIERNQSBidWZmZXIsIGNhbiB3ZSBh
Y2hpZXZlIHRoZSBzYW1lIGdvYWwgd2l0aA0KPiA+ID4gPiA+IGEgdGFzay1maWxlIGl0ZXJhdG9y
Pw0KPiA+ID4gPg0KPiA+ID4gPiBUaGF0IHdvdWxkIGZpbmQgYWxtb3N0IGFsbCBvZiB0aGVtLCBi
dXQgbm90IHRoZSBrZXJuZWwtb25seQ0KPiA+ID4gPiBhbGxvY2F0aW9ucy4gKGtlcm5lbF9yc3Mg
aW4gdGhlIGRtYWJ1Zl9kdW1wIG91dHB1dCBJIGF0dGFjaGVkIGVhcmxpZXIuDQo+ID4gPiA+IElm
IHRoZXJlJ3MgYSBsZWFrLCBpdCdzIGxpa2VseSB0byBzaG93IHVwIGluIGtlcm5lbF9yc3MgYmVj
YXVzZSBzb21lDQo+ID4gPiA+IGRyaXZlciBmb3Jnb3QgdG8gcmVsZWFzZSBpdHMgcmVmZXJlbmNl
KHMpLikgQWxzbyB3b3VsZG4ndCB0aGF0IGJlIGENCj4gPiA+ID4gdG9uIG1vcmUgaXRlcmF0aW9u
cyBzaW5jZSB3ZSdkIGhhdmUgdG8gdmlzaXQgZXZlcnkgRkQgdG8gZmluZCB0aGUNCj4gPiA+ID4g
c21hbGwgcG9ydGlvbiB0aGF0IGFyZSBkbWFidWZzPyBJJ20gbm90IGFjdHVhbGx5IHN1cmUgaWYg
YnVmZmVycyB0aGF0DQo+ID4gPiA+IGhhdmUgYmVlbiBtYXBwZWQsIGFuZCB0aGVuIGhhdmUgaGFk
IHRoZWlyIGZpbGUgZGVzY3JpcHRvcnMgY2xvc2VkDQo+ID4gPiA+IHdvdWxkIHNob3cgdXAgaW4g
dGFza19zdHJ1Y3QtPmZpbGVzOyBpZiBub3QgSSB0aGluayB0aGF0IHdvdWxkIG1lYW4NCj4gPiA+
ID4gc2Nhbm5pbmcgYm90aCBmaWxlcyBhbmQgdm1hcyBmb3IgZWFjaCB0YXNrLg0KPiA+ID4NCj4g
PiA+IEkgZG9uJ3QgdGhpbmsgc2Nhbm5pbmcgYWxsIEZEcyB0byBmaW5kIGEgc21hbGwgcG9ydGlv
biBvZiBzcGVjaWZpYyBGRHMNCj4gPiA+IGlzIGEgcmVhbCBpc3N1ZS4gV2UgaGF2ZSBhIHRvb2wg
dGhhdCBzY2FucyBhbGwgRkRzIGluIHRoZSBzeXN0ZW0gYW5kDQo+ID4gPiBvbmx5IGR1bXAgZGF0
YSBmb3IgcGVyZl9ldmVudCBGRHMuIEkgdGhpbmsgaXQgc2hvdWxkIGJlIGVhc3kgdG8NCj4gPiA+
IHByb3RvdHlwZSBhIHRvb2wgYnkgc2Nhbm5pbmcgYWxsIGZpbGVzIGFuZCBhbGwgdm1hcy4gSWYg
dGhhdCB0dXJucyBvdXQNCj4gPiA+IHRvIGJlIHZlcnkgc2xvdywgd2hpY2ggSSBoaWdobHkgZG91
YnQgd2lsbCBiZSwgd2UgY2FuIHRyeSBvdGhlcg0KPiA+ID4gYXBwcm9hY2hlcy4NCj4gPg0KPiA+
IEJ1dCB0aGlzIHdpbGwgbm90IGZpbmQgKmFsbCogdGhlIGJ1ZmZlcnMsIGFuZCB0aGF0IGRlZmVh
dHMgdGhlIHB1cnBvc2UNCj4gPiBvZiBoYXZpbmcgdGhlIGl0ZXJhdG9yLg0KPg0KPiBEbyB5b3Ug
bWVhbiB0aGlzIGFwcHJvYWNoIGNhbm5vdCBnZXQga2VybmVsIG9ubHkgYWxsb2NhdGlvbnM/IElm
DQo+IHRoYXQncyB0aGUgY2FzZSwgd2UgcHJvYmFibHkgZG8gbmVlZCBhIHNlcGFyYXRlIGl0ZXJh
dG9yLiBJIGFtDQo+IGludGVyZXN0ZWQgaW4gb3RoZXIgZm9sa3MgdGhvdWdodHMgb24gdGhpcy4N
Cg0KQ29ycmVjdC4NCg0KPiA+ID4gT1RPSCwgSSBhbSB3b25kZXJpbmcgd2hldGhlciB3ZSBjYW4g
YnVpbGQgYSBtb3JlIGdlbmVyaWMgaXRlcmF0b3INCj4gPiA+IGZvciBhIGxpc3Qgb2Ygb2JqZWN0
cy4gQWRkaW5nIGEgaXRlcmF0b3IgZm9yIGVhY2ggaW1wb3J0YW50IGtlcm5lbCBsaXN0cw0KPiA+
ID4gc2VlbXMgbm90IHNjYWxhYmxlIGluIHRoZSBsb25nIHRlcm0uDQo+ID4NCj4gPiBJIHRoaW5r
IHRoZSB3aWRlIHZhcmlldHkgb2YgZGlmZmVyZW5jZXMgaW4gbG9ja2luZyBmb3IgZGlmZmVyZW50
DQo+ID4gb2JqZWN0cyB3b3VsZCBtYWtlIHRoaXMgZGlmZmljdWx0IHRvIGRvIGluIGEgZ2VuZXJp
YyB3YXkuDQo+DQo+IEFncmVlZCBpdCBpcyBub3QgZWFzeSB0byBidWlsZCBhIGdlbmVyaWMgc29s
dXRpb24uIEJ1dCB3aXRoIHRoZQ0KPiBoZWxwIGZyb20gQlRGLCB3ZSBjYW4gcHJvYmFibHkgYnVp
bGQgc29tZXRoaW5nIHRoYXQgY292ZXJzDQo+IGEgbGFyZ2UgbnVtYmVyIG9mIHVzZSBjYXNlcy4N
Cg0KSSdtIGN1cmlvdXMgd2hhdCB0aGlzIHdvdWxkIGxvb2sgbGlrZS4gSSBndWVzcyBhIGdvb2Qg
dGVzdCB3b3VsZCBiZSB0bw0Kc2VlIGlmIGFueXRoaW5nIHdvdWxkIHdvcmsgZm9yIHNvbWUgc3Vi
c2V0IG9mIHRoZSBhbHJlYWR5IGV4aXN0aW5nDQppdGVyYXRvcnMuDQpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlz
dCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBh
biBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
