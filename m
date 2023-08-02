Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 8907376C4FB
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  2 Aug 2023 07:39:22 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 924D644149
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  2 Aug 2023 05:39:21 +0000 (UTC)
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	by lists.linaro.org (Postfix) with ESMTPS id B1E0B3ECF6
	for <linaro-mm-sig@lists.linaro.org>; Wed,  2 Aug 2023 05:39:16 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20221208 header.b=u2D4gxea;
	spf=pass (lists.linaro.org: domain of jstultz@google.com designates 209.85.128.51 as permitted sender) smtp.mailfrom=jstultz@google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-3fe1e44fd2bso60955e9.0
        for <linaro-mm-sig@lists.linaro.org>; Tue, 01 Aug 2023 22:39:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20221208; t=1690954755; x=1691559555;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TWYJKDdolz+W7APxSZcge8Mpis/01h5Go/3E39ja9gE=;
        b=u2D4gxeakPR8NuViuxq7UOiZsXAZW1EeAxq+260enPXoslZIKgTJbxTZZoltObc9L6
         d6pMxqUZsWU0dbrDwyykja+xGR30Gljw+lz1PRzPjM5gBPHycl4nmSLnVV7ShP+3RLv8
         N7iahaTTeK5z+s2r4WzxLyBIXNZrj8OMhzvDjL3k3QrlbULDJh6qFaBn92vNfZxl1XJm
         F29l5WQb1DIyMP4Y30lGQ/WhqONeInAjmuRC2xCDT8eThE13MwYY4eIXVAuk9hVqRzCO
         DSJQYanSQWCDcHa3e//iXzl0PWct1NPh6MBHFYCZuhrmxOR5AtQ4ekJyHv6Ppg60BKDI
         nN5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690954755; x=1691559555;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TWYJKDdolz+W7APxSZcge8Mpis/01h5Go/3E39ja9gE=;
        b=YvyIH1xYs2L+8RtxOj5WBDlh2gnYfUrd/reBfM62XENiYfUiRsOaRaST2X3S1wXvWk
         6zJ9LJ0g5YFT/Wm9GoH8jhtVfnzv2QQVqDnl63gWsUjP23vWBaIcuHTnA1wKzjQfyO3b
         DwcD6vEM3zwe6Sd2m6NgsiAhuojXT3NGhPQUYvl0cHNcOpQ1Z3PKlx0nsNLjmRX8SNll
         ASsg/dcyx6bWs6/1Vm1MOh5IFcdJPFNoyL3TAbpLQhAvoFFYar/mzFclepq5FC9wa34/
         znNxidk9KRL9QzvpX1dfcazOWLIKOlJjAB7f3L6wh7CYkG6FUzH2JBMtOZfNVFbhCtHU
         174g==
X-Gm-Message-State: ABy/qLZ6KL9EMY5K8FS5A3lInxymeplFJVI6O13QgeaRJAHln1CIX3NX
	cIyNBz1RPTK/LmJHdGqtUORDaRH/tAcJUNXDKM7A
X-Google-Smtp-Source: APBJJlGB2VlfuxW3dK4WzHju6fp7PuJyl70BB7fOeK4klgHs3vDqzuSrKB0hMKQEoXT8t+Zp/UAztaUSZM5ue3QKmJs=
X-Received: by 2002:a05:600c:3415:b0:3f7:e463:a0d6 with SMTP id
 y21-20020a05600c341500b003f7e463a0d6mr341983wmp.0.1690954755562; Tue, 01 Aug
 2023 22:39:15 -0700 (PDT)
MIME-Version: 1.0
References: <1690598115-26287-1-git-send-email-quic_pintu@quicinc.com>
 <20230731112155.GA3662@lst.de> <CAOuPNLjnfq1JefngtNrg0Q+JdMTSRz+eEqxGQJFfx9+af+k9WA@mail.gmail.com>
 <20230801171838.GA14599@lst.de>
In-Reply-To: <20230801171838.GA14599@lst.de>
From: John Stultz <jstultz@google.com>
Date: Tue, 1 Aug 2023 22:39:04 -0700
Message-ID: <CANDhNCq+3OEosUcQJ5GFgk+5OyG+JqXKM43UAo0aPz-V27OgAA@mail.gmail.com>
To: Christoph Hellwig <hch@lst.de>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: B1E0B3ECF6
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.50 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_DKIM_ALLOW(-0.20)[google.com:s=20221208];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	FROM_EQ_ENVFROM(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	FREEMAIL_CC(0.00)[gmail.com,quicinc.com,vger.kernel.org,linux-foundation.org,kvack.org,samsung.com,arm.com,lists.linux.dev,linaro.org,collabora.com,codeaurora.org,redhat.com,amd.com,lists.freedesktop.org,lists.linaro.org];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[google.com:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_RCPT(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.51:from]
Message-ID-Hash: RWXD4Y7CKLXSBF5IDBGU4AWDQUWEXCTK
X-Message-ID-Hash: RWXD4Y7CKLXSBF5IDBGU4AWDQUWEXCTK
X-MailFrom: jstultz@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Pintu Agarwal <pintu.ping@gmail.com>, Pintu Kumar <quic_pintu@quicinc.com>, linux-kernel@vger.kernel.org, akpm@linux-foundation.org, linux-mm@kvack.org, robin.murphy@arm.com, iommu@lists.linux.dev, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Liam Mark <lmark@codeaurora.org>, Laura Abbott <labbott@redhat.com>, Brian Starkey <Brian.Starkey@arm.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2] dma-contiguous: define proper name for global cma region
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/RWXD4Y7CKLXSBF5IDBGU4AWDQUWEXCTK/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVHVlLCBBdWcgMSwgMjAyMyBhdCAxMDoxOOKAr0FNIENocmlzdG9waCBIZWxsd2lnIDxoY2hA
bHN0LmRlPiB3cm90ZToNCj4NCj4gT24gVHVlLCBBdWcgMDEsIDIwMjMgYXQgMTA6NDI6NDJQTSAr
MDUzMCwgUGludHUgQWdhcndhbCB3cm90ZToNCj4gPiA+IEkgYWdyZWUgdGhhdCByZXNlcnZlZCBp
cyBub3QgYSB2ZXJ5IHVzZWZ1bCBuYW1lLiAgVW5mb3J0dWF0ZWx5IHRoZQ0KPiA+ID4gbmFtZSBv
ZiB0aGUgcmVnaW9uIGxlYWtzIHRvIHVzZXJzcGFjZSB0aHJvdWdoIGNtYV9oZWFwLg0KPiA+ID4N
Cj4gPiA+IFNvIEkgdGhpbmsgd2UgbmVlZCBwcmVwIHBhdGNoZXMgdG8gaGFyZGNvZGUgInJlc2Vy
dmVkIiBpbg0KPiA+ID4gYWRkX2RlZmF1bHRfY21hX2hlYXAgZmlyc3QsIGFuZCB0aGVuIHJlbW92
ZSB0aGUgY21hX2dldF9uYW1lDQo+ID4gPiBmaXJzdC4NCj4gPg0KPiA+IFNvcnJ5LCBidXQgSSBj
b3VsZCBub3QgZnVsbHkgdW5kZXJzdGFuZCB5b3VyIGNvbW1lbnRzLg0KPiA+IENhbiB5b3UgcGxl
YXNlIGVsYWJvcmF0ZSBhIGxpdHRsZSBtb3JlIHdoYXQgY2hhbmdlcyBhcmUgcmVxdWlyZWQgaW4N
Cj4gPiBjbWFfaGVhcCBpZiB3ZSBjaGFuZ2UgInJlc2VydmVkIiB0byAiZ2xvYmFsLWNtYS1yZWdp
b24iID8NCj4NCj4gU3RlcCAxOg0KPg0KPiBJbnN0ZWFkIG9mIHNldHRpbmcgZXhwX2luZm8ubmFt
ZSB0byBjbWFfZ2V0X25hbWUoY21hKTsNCj4gaW4gX19hZGRfY21hX2hlYXAganVzdCBzZXQgaXQg
dG8gInJlc2VydmVkIiwgcHJvYmFibHkgYnkgcGFzc2luZyBhIG5hbWUNCj4gYXJndW1lbnQuICBZ
b3UgY2FuIGFsc28gcmVtb3ZlIHRoZSB1bnVzZWQgZGF0YSBhcmd1bWVudCB0byBfX2FkZF9jbWFf
aGVhcA0KPiBhbmQvb3IganVzdCBmb2xkIHRoYXQgZnVuY3Rpb24gaW50byB0aGUgb25seSBjYWxs
ZXIgd2hpbGUgeW91J3JlIGF0IGl0Lg0KDQpTbywgZm9yZ2l2ZSBtZSwgSSd2ZSBub3QgaGFkIGEg
Y2hhbmNlIHRvIGxvb2sgaW50byB0aGlzLCBidXQgbXkNCnJlY29sbGVjdGlvbiB3YXMgInJlc2Vy
dmVkIiBpcyB0aGUgbmFtZSB3ZSBzZWUgb24geDg2LCBidXQgb3RoZXIgbmFtZXMNCmFyZSBwb3Nz
aWJseSBwcm92aWRlZCB2aWEgdGhlIGR0cyBub2RlPw0KDQpJIGJlbGlldmUgb24gdGhlIGhpa2V5
IGJvYXJkIGl0cyAibGludXgsY21hIiBpcyB0aGUgbmFtZSwgc28gZm9yY2luZw0KaXQgdG8gcmVz
ZXJ2ZWQgd291bGQgYnJlYWsgdGhhdC4NCg0KTWF5YmUgaW5zdGVhZCBhZGQgYSBjb21wYXQgY29u
ZmlnIG9wdGlvbiB0byBmb3JjZSB0aGUgY21hIG5hbWUgKHNvIHg4Ng0KY2FuIHNldCBpdCB0byAi
ZGVmYXVsdCIgaWYgbmVlZGVkKT8NCg0KdGhhbmtzDQotam9obg0KX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3Qg
LS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4g
ZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
