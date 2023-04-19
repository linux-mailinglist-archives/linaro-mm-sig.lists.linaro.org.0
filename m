Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id BEFCA6F55DA
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 May 2023 12:18:57 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CA9B83F959
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 May 2023 10:18:56 +0000 (UTC)
Received: from mail-yw1-f172.google.com (mail-yw1-f172.google.com [209.85.128.172])
	by lists.linaro.org (Postfix) with ESMTPS id 800F43E887
	for <linaro-mm-sig@lists.linaro.org>; Wed, 19 Apr 2023 00:19:57 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20221208 header.b=S8BVArrw;
	spf=pass (lists.linaro.org: domain of justinpopo6@gmail.com designates 209.85.128.172 as permitted sender) smtp.mailfrom=justinpopo6@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-yw1-f172.google.com with SMTP id 00721157ae682-54fa9da5e5bso280127327b3.1
        for <linaro-mm-sig@lists.linaro.org>; Tue, 18 Apr 2023 17:19:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681863597; x=1684455597;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vLuO0FT5ni9AWAkx5yPjYHqfEIyb0XFRqoQb1KsSeWo=;
        b=S8BVArrwZ18B3H56hONoNjBqSY2GxUdofcqWqzJDOYmkUDgGj9IW9Fss+xIx24ZCkH
         rWKWKRmOLpsNysUka+G3yQGMXlun/SmG15M859txABUKhY436kINzZCjVnYWXCndLvM4
         8KHJOYNMZqXDxbtjVZZM4j1GHgZRjuLWqaGnqf9DY6jWHCfIOcFQ0TWDGxJ4w2OBlCG9
         +JSdnkA9SIGgRIB5iqkgxNZ8A6iA/rheFVlWl6EFk9RcFCmKMMxW30OA4WDvr6Rym5YX
         IJCZboifMX1RPOAQv9vwqjSmJmFipGblaFwRTXNZ/3pg3QqIN44HhZanluq4/gRMiX6b
         fR7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681863597; x=1684455597;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vLuO0FT5ni9AWAkx5yPjYHqfEIyb0XFRqoQb1KsSeWo=;
        b=JzAnDCkUSgFvn+p8IqGvKitvjLpugs43xVmmgZucDsLPvEsPyF/RUVoVKzCEL2YWwD
         6WuPCUPFvoMHWR4JJCKKMhH6fF/VHo76FQmnMamRCm/kzkr6ePVaJF7WisG3w7UqlxA7
         r3eRd8RaOdJ7jOdJ1+QReZnT4kaEdpK4MnTgLnk18BD7vXma+yg8sG25PmJORMYV3K7N
         PZykVcJhjDkRz/XgMh0c8/85pdqbGpJTfhjIbTWIoTlhsfJy5Hc0njEittjayx3bacC1
         ntYzfFyOGVET0vCSfwXlxHWof3Yfa3hyNNr1jSO5YCI4Y6eQtw5r+w0MtqcINUTuGGqd
         t31g==
X-Gm-Message-State: AAQBX9eafAGrgRJR9JtYYUl2d6rVf0LkkLBlBHqkCvuRcgd3S8YXhv4l
	izKBItw/5maVKV2/LHJm+dwveBWX6oNgCmhZdgE=
X-Google-Smtp-Source: AKy350acuABH35eqRI4cUGE5NLDSP0MyKmWLUWy3oJ4G7KYUoSorueyUHRaoZPEgopF3hbuWqZbe4hQVaXr24b3Qtd0=
X-Received: by 2002:a81:17d0:0:b0:552:ae41:50a2 with SMTP id
 199-20020a8117d0000000b00552ae4150a2mr693540ywx.21.1681863596964; Tue, 18 Apr
 2023 17:19:56 -0700 (PDT)
MIME-Version: 1.0
References: <1681863018-28006-1-git-send-email-justinpopo6@gmail.com>
In-Reply-To: <1681863018-28006-1-git-send-email-justinpopo6@gmail.com>
From: Justin Chen <justinpopo6@gmail.com>
Date: Tue, 18 Apr 2023 17:19:46 -0700
Message-ID: <CAJx26kUvry0pTKmuqmt4ZK+wFg9-bWpi871jsUJWmVBRw1wuEA@mail.gmail.com>
To: netdev@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
	dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
	bcm-kernel-feedback-list@broadcom.com
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20221208];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	FREEMAIL_CC(0.00)[broadcom.com,gmail.com,davemloft.net,google.com,kernel.org,redhat.com,linaro.org,lunn.ch,armlinux.org.uk,amd.com];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	RCVD_COUNT_ONE(0.00)[1];
	MIME_TRACE(0.00)[0:+];
	FROM_EQ_ENVFROM(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	RCVD_TLS_LAST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_RCPT(0.00)[dt];
	TO_DN_NONE(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.172:from]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 800F43E887
X-Spamd-Bar: --
X-MailFrom: justinpopo6@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: SU6R3B4G57EEIMU3IC2ILPUWC72NJTOJ
X-Message-ID-Hash: SU6R3B4G57EEIMU3IC2ILPUWC72NJTOJ
X-Mailman-Approved-At: Wed, 03 May 2023 10:16:11 +0000
CC: justin.chen@broadcom.com, f.fainelli@gmail.com, davem@davemloft.net, edumazet@google.com, kuba@kernel.org, pabeni@redhat.com, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, opendmb@gmail.com, andrew@lunn.ch, hkallweit1@gmail.com, linux@armlinux.org.uk, richardcochran@gmail.com, sumit.semwal@linaro.org, christian.koenig@amd.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH net-next 0/6] Brcm ASP 2.0 Ethernet controller
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/SU6R3B4G57EEIMU3IC2ILPUWC72NJTOJ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVHVlLCBBcHIgMTgsIDIwMjMgYXQgNToxMOKAr1BNIEp1c3RpbiBDaGVuIDxqdXN0aW5wb3Bv
NkBnbWFpbC5jb20+IHdyb3RlOg0KPg0KPiBGcm9tOiBKdXN0aW4gQ2hlbiA8anVzdGluLmNoZW5A
YnJvYWRjb20uY29tPg0KV29vcHMsIGxvb2tzIGxpa2UgSSBzY3Jld2VkIHVwIG9uIHNvbWUgb2Yg
bXkgZW1haWwgYWRkcmVzc2VzIGluIHRoZQ0KcGF0Y2ggc2V0LiBXaWxsIGZpeCBpbiB2MiBhZnRl
ciBmaXJzdCByb3VuZCBvZiByZXZpZXdzLg0KDQpKdXN0aW4NCj4NCj4gQWRkIHN1cHBvcnQgZm9y
IHRoZSBCcm9hZGNvbSBBU1AgMi4wIEV0aGVybmV0IGNvbnRyb2xsZXIgd2hpY2ggaXMgZmlyc3QN
Cj4gaW50cm9kdWNlZCB3aXRoIDcyMTY1Lg0KPg0KPiBBZGQgc3VwcG9ydCBmb3IgNzQxNjUgMTAv
MTAwIGludGVncmF0ZWQgRXRoZXJuZXQgUEhZIHdoaWNoIGFsc28gdXNlcw0KPiB0aGUgQVNQIDIu
MCBFdGhlcm5ldCBjb250cm9sbGVyLg0KPg0KPiBGbG9yaWFuIEZhaW5lbGxpICgyKToNCj4gICBk
dC1iaW5kaW5nczogbmV0OiBCcmNtIEFTUCAyLjAgRXRoZXJuZXQgY29udHJvbGxlcg0KPiAgIG5l
dDogcGh5OiBiY203eHh4OiBBZGQgRVBIWSBlbnRyeSBmb3IgNzQxNjUNCj4NCj4gSnVzdGluIENo
ZW4gKDQpOg0KPiAgIGR0LWJpbmRpbmdzOiBuZXQ6IGJyY20sdW5pbWFjLW1kaW86IEFkZCBhc3At
djIuMA0KPiAgIG5ldDogYmNtYXNwOiBBZGQgc3VwcG9ydCBmb3IgQVNQMi4wIEV0aGVybmV0IGNv
bnRyb2xsZXINCj4gICBuZXQ6IHBoeTogbWRpby1iY20tdW5pbWFjOiBBZGQgYXNwIHYyLjAgc3Vw
cG9ydA0KPiAgIE1BSU5UQUlORVJTOiBBU1AgMi4wIEV0aGVybmV0IGRyaXZlciBtYWludGFpbmVy
cw0KPg0KPiAgLi4uL2RldmljZXRyZWUvYmluZGluZ3MvbmV0L2JyY20sYXNwLXYyLjAueWFtbCAg
ICAgfCAgMTQ2ICsrDQo+ICAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9uZXQvYnJjbSx1bmltYWMt
bWRpby55YW1sICB8ICAgIDIgKw0KPiAgTUFJTlRBSU5FUlMgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgfCAgICA5ICsNCj4gIGRyaXZlcnMvbmV0L2V0aGVybmV0L2Jyb2Fk
Y29tL0tjb25maWcgICAgICAgICAgICAgIHwgICAxMSArDQo+ICBkcml2ZXJzL25ldC9ldGhlcm5l
dC9icm9hZGNvbS9NYWtlZmlsZSAgICAgICAgICAgICB8ICAgIDEgKw0KPiAgZHJpdmVycy9uZXQv
ZXRoZXJuZXQvYnJvYWRjb20vYXNwMi9NYWtlZmlsZSAgICAgICAgfCAgICAyICsNCj4gIGRyaXZl
cnMvbmV0L2V0aGVybmV0L2Jyb2FkY29tL2FzcDIvYmNtYXNwLmMgICAgICAgIHwgMTUyNyArKysr
KysrKysrKysrKysrKysrKw0KPiAgZHJpdmVycy9uZXQvZXRoZXJuZXQvYnJvYWRjb20vYXNwMi9i
Y21hc3AuaCAgICAgICAgfCAgNjM2ICsrKysrKysrDQo+ICAuLi4vbmV0L2V0aGVybmV0L2Jyb2Fk
Y29tL2FzcDIvYmNtYXNwX2V0aHRvb2wuYyAgICB8ICA2MjAgKysrKysrKysNCj4gIGRyaXZlcnMv
bmV0L2V0aGVybmV0L2Jyb2FkY29tL2FzcDIvYmNtYXNwX2ludGYuYyAgIHwgMTQyNSArKysrKysr
KysrKysrKysrKysNCj4gIC4uLi9uZXQvZXRoZXJuZXQvYnJvYWRjb20vYXNwMi9iY21hc3BfaW50
Zl9kZWZzLmggIHwgIDIzOCArKysNCj4gIGRyaXZlcnMvbmV0L21kaW8vbWRpby1iY20tdW5pbWFj
LmMgICAgICAgICAgICAgICAgIHwgICAgMiArDQo+ICBkcml2ZXJzL25ldC9waHkvYmNtN3h4eC5j
ICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAgIDEgKw0KPiAgaW5jbHVkZS9saW51eC9icmNt
cGh5LmggICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgICAxICsNCj4gIDE0IGZpbGVzIGNo
YW5nZWQsIDQ2MjEgaW5zZXJ0aW9ucygrKQ0KPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50
YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9uZXQvYnJjbSxhc3AtdjIuMC55YW1sDQo+ICBjcmVh
dGUgbW9kZSAxMDA2NDQgZHJpdmVycy9uZXQvZXRoZXJuZXQvYnJvYWRjb20vYXNwMi9NYWtlZmls
ZQ0KPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvbmV0L2V0aGVybmV0L2Jyb2FkY29tL2Fz
cDIvYmNtYXNwLmMNCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL25ldC9ldGhlcm5ldC9i
cm9hZGNvbS9hc3AyL2JjbWFzcC5oDQo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9uZXQv
ZXRoZXJuZXQvYnJvYWRjb20vYXNwMi9iY21hc3BfZXRodG9vbC5jDQo+ICBjcmVhdGUgbW9kZSAx
MDA2NDQgZHJpdmVycy9uZXQvZXRoZXJuZXQvYnJvYWRjb20vYXNwMi9iY21hc3BfaW50Zi5jDQo+
ICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9uZXQvZXRoZXJuZXQvYnJvYWRjb20vYXNwMi9i
Y21hc3BfaW50Zl9kZWZzLmgNCj4NCj4gLS0NCj4gMi43LjQNCj4NCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0
IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFu
IGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
