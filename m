Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 09D1D9AB5A1
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 22 Oct 2024 19:58:58 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D439143C18
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 22 Oct 2024 17:58:56 +0000 (UTC)
Received: from mail-qv1-f41.google.com (mail-qv1-f41.google.com [209.85.219.41])
	by lists.linaro.org (Postfix) with ESMTPS id 4423C3F466
	for <linaro-mm-sig@lists.linaro.org>; Tue, 22 Oct 2024 17:58:49 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ndufresne-ca.20230601.gappssmtp.com header.s=20230601 header.b=B87P3Zid;
	spf=none (lists.linaro.org: domain of nicolas@ndufresne.ca has no SPF policy when checking 209.85.219.41) smtp.mailfrom=nicolas@ndufresne.ca;
	dmarc=none
Received: by mail-qv1-f41.google.com with SMTP id 6a1803df08f44-6cbe68f787dso35220326d6.2
        for <linaro-mm-sig@lists.linaro.org>; Tue, 22 Oct 2024 10:58:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20230601.gappssmtp.com; s=20230601; t=1729619929; x=1730224729; darn=lists.linaro.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=bzWd8rKalKLnCDEJXyAj/PFeqHxExSaBmYI1WaZdk80=;
        b=B87P3ZidvYiUgPnF7mXD3nxOAnsvnTHxkTdOCvLgmWcmCJ/oZqEpMZWCFxkdteqnuy
         5w1xpRKqhYVKE+aqQsMaICvdvWF0JbTHX9AiZWMryiakdlaVM1ojmNH6OlD93/6Wtn62
         GPIFO44N2kE+QV5y1CbPyJeHEwRHCYyisOdKqUqFVfQEgkzC6NLPsX1z0eeb/4q2IEgw
         eHkUXsrwHZ268tqVcuyMF4IQIqxFzXO0DeJ7SwEc57jdRx3s6gcFhLeg6DGd7A+BBfpq
         T0d4V7NpDHVleVOaMpL0F46zP2CFDMS90EyBpCebwuRHPxy+OZ5GE4GY0az3hw2+XMwY
         PpmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729619929; x=1730224729;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bzWd8rKalKLnCDEJXyAj/PFeqHxExSaBmYI1WaZdk80=;
        b=RJdQoeAFltJN0DV5oPK4lKx3jWuE+HiO+DhinFIALzmdiBfSP1gIf7ONalp+r72XAn
         eU23oowRzo+//xp99a5UDI9rdsd8dgiFtH3aLFbnB7kRlV4v4dGW9Ni76Ytju/OH38MT
         efGPQ1TFV4DnMDd78YQzJJvguRM5SW1qtAT7vCd5k7H6cXBMOEMmEQnNgQTk6SG0nzOp
         zOwEqr/04r+jt7zSBtE7iDQ9LEBviRC9OPag9dXSp9cU1X9mMSfC0f55cyqc8V/osQAv
         oofuYHwSq4t4VMz+7D65lMDdWZwNSujEyZujF/MaiycQdYH0a2sHLpzGqWyyNsoEYct1
         OVfQ==
X-Forwarded-Encrypted: i=1; AJvYcCUIM6jdD+nGRG1YlAZnuOnrVX7zmeqWZpqoy4O0fvnUdYQc2j0uasiepbBday88EBVsIC9sS4SrOhrPRJ9I@lists.linaro.org
X-Gm-Message-State: AOJu0YydBflb5UR7NfjlYYqQ1vqVrFSNItwOpfWLdL5++qYp91bgZBBb
	Jvp6jUFCjEwMOLKnZ2a+gWWP6LpcsaJrx5y8eyRozIbj4RZug7xRVt+VGYKufKM=
X-Google-Smtp-Source: AGHT+IFdA/p619PkELXaREfuUW3E6V0uE6dktYYNp3frR0HpWhrRRTYooq1Sbx8ODU8q4H36RgRX0g==
X-Received: by 2002:a05:6214:3991:b0:6ce:305e:324f with SMTP id 6a1803df08f44-6ce305e3471mr15960826d6.23.1729619928754;
        Tue, 22 Oct 2024 10:58:48 -0700 (PDT)
Received: from nicolas-tpx395.lan ([2606:6d00:15:862e::7a9])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6ce009996e0sm30984706d6.82.2024.10.22.10.58.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Oct 2024 10:58:48 -0700 (PDT)
Message-ID: <f8831b4e658b19a1df4cc02449bb74d730908de6.camel@ndufresne.ca>
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: John Stultz <jstultz@google.com>, Maxime Ripard <mripard@redhat.com>
Date: Tue, 22 Oct 2024 13:58:47 -0400
In-Reply-To: <CANDhNCoLgzy=CPBWjBKLiJzRdnf=SS3AgtFJNB-CBYAo=UEQJA@mail.gmail.com>
References: <20241022-macaw-of-spectacular-joy-8dcefa@houat>
	 <CANDhNCoLgzy=CPBWjBKLiJzRdnf=SS3AgtFJNB-CBYAo=UEQJA@mail.gmail.com>
User-Agent: Evolution 3.52.4 (3.52.4-1.fc40) 
MIME-Version: 1.0
X-Spamd-Result: default: False [-7.30 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	R_DKIM_ALLOW(-0.20)[ndufresne-ca.20230601.gappssmtp.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	R_SPF_NA(0.00)[no SPF record];
	RBL_SENDERSCORE_REPUT_8(0.00)[209.85.219.41:from];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.219.41:from];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCPT_COUNT_SEVEN(0.00)[11];
	DMARC_NA(0.00)[ndufresne.ca];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[ndufresne-ca.20230601.gappssmtp.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 4423C3F466
X-Spamd-Bar: -------
Message-ID-Hash: 3KCE2UOMD3IE3TIMWWJG5HU3DZ7NYS5P
X-Message-ID-Hash: 3KCE2UOMD3IE3TIMWWJG5HU3DZ7NYS5P
X-MailFrom: nicolas@ndufresne.ca
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, "T.J. Mercier" <tjmercier@google.com>, Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: Requirements to merge new heaps in the kernel
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3KCE2UOMD3IE3TIMWWJG5HU3DZ7NYS5P/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksDQoNCkxlIG1hcmRpIDIyIG9jdG9icmUgMjAyNCDDoCAwOToxOSAtMDcwMCwgSm9obiBTdHVs
dHogYSDDqWNyaXTCoDoNCj4gT24gVHVlLCBPY3QgMjIsIDIwMjQgYXQgMTozOOKAr0FNIE1heGlt
ZSBSaXBhcmQgPG1yaXBhcmRAcmVkaGF0LmNvbT4gd3JvdGU6DQo+ID4gDQo+ID4gSSB3YW50ZWQg
dG8gZm9sbG93LXVwIG9uIHRoZSBkaXNjdXNzaW9uIHdlIGhhZCBhdCBQbHVtYmVycyB3aXRoIEpv
aG4gYW5kDQo+ID4gVC5KLiBhYm91dCAoYW1vbmcgb3RoZXIgdGhpbmdzKSBhZGRpbmcgbmV3IGhl
YXBzIHRvIHRoZSBrZXJuZWwuDQo+ID4gDQo+ID4gSSdtIHN0aWxsIGludGVyZXN0ZWQgaW4gbWVy
Z2luZyBhIGNhcnZlLW91dCBkcml2ZXJbMV0sIHNpbmNlIGl0IHNlZW1zIHRvIGJlDQo+ID4gaW4g
ZXZlcnkgdmVuZG9yIEJTUCBhbmQgZ290IGFza2VkIGFnYWluIGxhc3Qgd2Vlay4NCj4gPiANCj4g
PiBJIHJlbWVtYmVyIGZyb20gb3VyIGRpc2N1c3Npb24gdGhhdCBmb3IgbmV3IGhlYXAgdHlwZXMg
dG8gYmUgbWVyZ2VkLCB3ZQ0KPiA+IG5lZWRlZCBhIGtlcm5lbCB1c2UtY2FzZS4gTG9va2luZyBi
YWNrLCBJJ20gbm90IGVudGlyZWx5IHN1cmUgaG93IG9uZQ0KPiA+IGNhbiBwcm92aWRlIHRoYXQg
Z2l2ZW4gdGhhdCBoZWFwcyBhcmUgZXNzZW50aWFsbHkgZmFjaWxpdGllcyBmb3INCj4gPiB1c2Vy
LXNwYWNlLg0KPiA+IA0KPiA+IEFtIEkgbWlzcmVtZW1iZXJpbmcgb3IgbWlzc2luZyBzb21ldGhp
bmc/IFdoYXQgYXJlIHRoZSByZXF1aXJlbWVudHMgZm9yDQo+ID4geW91IHRvIGNvbnNpZGVyIGFk
ZGluZyBhIG5ldyBoZWFwIGRyaXZlcj8NCj4gDQo+IEl0J3MgYmFzaWNhbGx5IHRoZSBzYW1lIGFz
IHRoZSBEUk0gc3Vic3lzdGVtIHJ1bGVzLg0KPiBodHRwczovL2RvY3Mua2VybmVsLm9yZy9ncHUv
ZHJtLXVhcGkuaHRtbCNvcGVuLXNvdXJjZS11c2Vyc3BhY2UtcmVxdWlyZW1lbnRzDQo+IGllOiBU
aGVyZSBoYXMgdG8gYmUgb3BlbnNvdXJjZSB1c2VyIGZvciBpdCwgYW5kIHRoZSB1c2VyIGhhcyB0
byBiZQ0KPiBtb3JlIHNpZ25pZmljYW50IHRoYW4gYSAidG95IiBpbXBsZW1lbnRhdGlvbiAod2hp
Y2ggY2FuIGJlIGEgYml0DQo+IHN1YmplY3RpdmUgYW5kIGNvbnRlbnRpb3VzIHdoZW4gdHJ5aW5n
IHRvIGdldCBvdXQgb2YgYSBjaGlja2VuIGFuZCBlZ2cNCj4gbG9vcCkuDQoNCklmIHRoZXJlIGlz
IGEgZ2VuZXJpYyBsb2dpYyB0byBkZWNpZGUgdG8gdXNlIGEgY2FydmUtb3V0IHdoZW4gdXNpbmcg
c29tZQ0Kc3BlY2lmaWMgZGV2aWNlIG9uIHNwZWNpZmljIHBsYXRmb3JtLCBpdCB3b3VsZCBub3Qg
YmUgYSBwcm9ibGVtIHRvIG1ha2UNCnVzZXJzcGFjZSBmb3IgaXQuIEknbSBoYXBweSB0byB0YWtl
IERNQUJ1ZiBwYXRjaGVzIGluIEdTdHJlYW1lciBub3RhYmx5ICh3aGljaA0KY291bGQgZ3JlYXRs
eSBoZWxwIGVuc3VyaW5nIHplcm8tY29weSBwYXRoKS4NCg0KQnV0IHNvIGZhciwgYWxsIHRoZSBw
cm9wb3NhbHMgd2FzIGp1c3QgYSBiYXNlIGFsbG9jYXRvciwgbm8gd2F5IHRvIGtub3cgd2hlbiB0
bw0KdXNlIGl0IGFuZCBmb3Igd2hpY2ggZGV2aWNlLiBUaGUgYWN0dWFsIG1hcHBpbmcgb2YgaGVh
cHMgYW5kIGRldmljZSB3YXMgbGVmdCB0bw0KdXNlcnNwYWNlLCB3aGljaCB0byBiZSBob25lc3Qg
d291bGQgb25seSB3b3JrIHdpdGggYSB1c2Vyc3BhY2UgTGludXggQWxsb2NhdG9yDQpsaWJyYXJ5
LCB3aXRoIHVzZXJzcGFjZSBkcml2ZXJzLCBvciBpbnNpZGUgbWVzYSBpZiB0aGUgZGV2aWNlcyBh
cmUgR1BVcy9OUFVzLg0KVGhpcyBpcyBhIHByb2plY3QgTGF1cmVudCBQaW5jaGFyZCBoYXZlIGhv
c3RlZCBhIHdvcmtzaG9wIGFib3V0IGR1cmluZyBYREMuDQoNCk5pY29sYXMNCg0KcC5zLiBsaWJj
YW1lcmEgaGF2ZSBkZXZpY2Ugc3BlY2lmaWMga25vd2xlZGdlLCBhbmQgY291bGQgb2YgY291cnNl
IGJlIGEgc2hvcnRlcg0KdGVybSB1c2VyLiBOb3RlIHRoYXQgbWFqb3IgZGlzdHJvIGFyZSBub3Qg
aGFwcHkgdGhhdCB0aGVyZSBpcyBubyBtZW1vcnkNCmFjY291bnRpbmcgZm9yIGRtYWJ1ZiwgYnlw
YXNzaW5nIHNhbmRib3hlcyBhbmQgbGltaXRzLg0KX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJv
LW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8g
bGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
