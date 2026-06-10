Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id vCeNN4mBKWqnYAMAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 17:23:53 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 6824266AAEF
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 17:23:53 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=google.com header.s=20251104 header.b=kR74jsrG;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=google.com (policy=reject);
	arc=reject ("signature check failed: fail, {[1] = sig:google.com:reject}")
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7189140A37
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 15:23:52 +0000 (UTC)
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	by lists.linaro.org (Postfix) with ESMTPS id CF8AB40988
	for <linaro-mm-sig@lists.linaro.org>; Wed, 10 Jun 2026 15:23:39 +0000 (UTC)
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-490b23c828aso57385e9.1
        for <linaro-mm-sig@lists.linaro.org>; Wed, 10 Jun 2026 08:23:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1781105019; cv=none;
        d=google.com; s=arc-20240605;
        b=cuRc/zh9qlrVji7wb1be5tfPzKEtIqy+4tdcnO2XJm4AgRGcqlrxKN8mLbEuY26jjB
         AxvgW1EzZLTk92UUlr5OoEswWLAmpua82HKjOUbyk9XcJdonRq3SUNhECMwOx9dGcnlQ
         MSW9gCVng0p9658QVHmlhyVyZ6NQ1v6FYDa8Sl1SC4WM5sBWdGUMbxeFW+PQfDtEulY2
         URRLyGmsJLmtrvwT3FzuB+Smm2YlCN0gHwKngL+g18ieL+7VkuHAKQLNJcDllL5Gzhug
         qfUiVSOmEwhC/CG0N2HYMiYCL8EyuAT0KGPS4ZWjYKqn4ZgYAffGsUpEbixtFLGTH/PD
         d73Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=HLSNIkxH7X+mkcTC4TNft77b6jFG+UTH6aJ4cVsmWLs=;
        fh=P/u6KgjpxT9BZMbVG7QI0Oq0QnUGjYG2ieTN8oqUkTs=;
        b=faoE//vEIPnaJKFE00/5wNCZ7g+HVi2zbAO/Ymcazk89YKlhrnYyaxgfrTxL0iSxY7
         pWxm0GCWLZqftMS8ravINJxqT8hBuqc/ez30/6QY5s4O3P6QkazQaqBh6v43QzwHcmmE
         ZKI5iZPh/tiimXJcqAekJcSoCh+BxXO5HAYVwKfnyWS03iCVLcGoSq7Q+NE2zz8BwcTc
         a1sG376oe3ZbFHMPuewAnSimyjZfAmOjUZ7X3AsKyDQpTP88PCdsifOzwhx5MXEuEYSD
         zhXdhlm/+QwUgWMTc1aEuPFYHBxMRgHNd2hcxgjGT8qFlhF2ub9v5t7DLtjyOOzTlDlP
         HtVQ==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20251104; t=1781105019; x=1781709819; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HLSNIkxH7X+mkcTC4TNft77b6jFG+UTH6aJ4cVsmWLs=;
        b=kR74jsrGRgOw5s/TgGpAN1zm8Rkv/ss8TevTLBAMhosaisHYQXg6bRVAa/JZyjNH/8
         Jcru3DVbhGyGv7HZB01Y2wXhXgAaTOUocTH60OiTck73mRKabie6mFrwsA7LnqswqTXw
         QQEWaQJtc1YtoC4iYNK0VpP2teZVBoiidAzgJwpVn1ULXjlvnszqPQrZdSKozlAzG9Gi
         dAXp52hWzVt5oL/1/Jdkynzwn/Jk5KEBl5xYUBiWLORF5y6gMNc8Icc9msOWtx6S/HQ2
         kyLayxfQ7CaZB+kkb+45myrxr6rplvVsq9GqqTuPn5SfYqUiZ236GPk9wlilEXl7Eda7
         eROw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781105019; x=1781709819;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=HLSNIkxH7X+mkcTC4TNft77b6jFG+UTH6aJ4cVsmWLs=;
        b=Uzcu95jBRH2bBf66Ac/9UQTil5IxJf4x7VytloG0SwedHVvPo+kUbEgynaz3jiok9b
         ceOwfuMTObDSJDbq9oo9yG+Lf+6MlWOT2oNrU1SSkOh9ZobsHqOM/oP6gwU+7efoPa2y
         76I0hTIwI5WtEWKID0/x7iQU2Z6vCrcRHBcjzKIKa4WhRNZIU+Ml58aW2wrGccqMGw0g
         wLtueKGytyLvCw8BpLSze5MJwRC2TZ0SYNz3lROQm01H451Ri7Kh3y8tuSO4eT7yYzSK
         cFYwBcXtjU+0b4lMP0AM27vgeE7s5nvV2+Ppr922UESPDuLoKaRS9aCHxDRWx0W2CBgS
         PDZw==
X-Forwarded-Encrypted: i=1; AFNElJ+5NF4Fsc2N+q6y0D6dSwBQevoQzPpevS7PMpjRTZNkQQWpkR+mbdV8R/Kv2n7Hrz0ar6AvaKuocdju8PCO@lists.linaro.org
X-Gm-Message-State: AOJu0Yz5o/kODOf+JlZcNMRUqP0/bZv2VE6QjkPI+yUCwPUGPNUUG8hZ
	xRPin5qWfEjf0wMZBZl9i6CrrRw0gyRvQI5fgf0SJqChTBz+yp5GolHR+0VXEEVyKWarPPZd591
	CwWzS0lABoXspE1GXMYYrM7BNSXbKda7555W1e1Wt
X-Gm-Gg: Acq92OHlkv0VHqgdciWDmHiSWpr7n9pRQxjdu8gWj3dm93qg+VWiULEDI8YwlGaFEbE
	B/uFgu7RlPSYVnUtdLFj9JP5figLi0IjfGg9bf5IpepP9DwXkRMcUbxqY9cg4gaDPCR9g+axJZb
	J6qlCfLXxrfOyCm1f9r3SRx9tfe2mG46Qt4sTtz2AW+2TxlNGV/2Xi/pfJZududCe5AshFgo+XH
	q2y0H3htR4HQzYydxyc0P69f8HEGyt9AAlUqQD4u+aUEZ57jUKYxnwHNUZaehj1iGFtjD4F+0km
	/jobCCzyOu5EUveXkemCRfy7Ns6iZqNQ339dV2o7Dt1DQ2mQi1/6IFhwFvQDHwpsHPfBhSQBIrA
	94pPw
X-Received: by 2002:a7b:c055:0:b0:48a:5aa3:ac1e with SMTP id
 5b1f17b1804b1-490e250419dmr39465e9.3.1781105018413; Wed, 10 Jun 2026 08:23:38
 -0700 (PDT)
MIME-Version: 1.0
References: <20260610142329.3836808-1-sumit.semwal@linaro.org>
In-Reply-To: <20260610142329.3836808-1-sumit.semwal@linaro.org>
From: "T.J. Mercier" <tjmercier@google.com>
Date: Wed, 10 Jun 2026 08:23:24 -0700
X-Gm-Features: AVVi8CeKPjOw-ulqerfXTIRQXgt0wS2BLRdaHk4b32zpbgZavKZyW6IeEygncls
Message-ID: <CABdmKX0K22aaPTrk7Xs_8859ePYQsPNuqcG3v4oMZHK3T0xqKQ@mail.gmail.com>
To: Sumit Semwal <sumit.semwal@linaro.org>
X-Spamd-Bar: ----
Message-ID-Hash: WUPHJNXFHSMXNQECFQJWQIJ36JA5SUF6
X-Message-ID-Hash: WUPHJNXFHSMXNQECFQJWQIJ36JA5SUF6
X-MailFrom: tjmercier@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: christian.koenig@amd.com, jgg@ziepe.ca, jiri@resnulli.us, hch@infradead.org, maddy@linux.ibm.com, mpe@ellerman.id.au, npiggin@gmail.com, chleroy@kernel.org, linuxppc-dev@lists.ozlabs.org, lkp@intel.com, agordeev@linux.ibm.com, gerald.schaefer@linux.ibm.com, linux-s390@vger.kernel.org, djbw@kernel.org, thomas.lendacky@amd.com, x86@kernel.org, arnd@linaro.org, benjamin.gaignard@collabora.com, Brian.Starkey@arm.com, jstultz@google.com, mripard@kernel.org, afd@ti.com, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: move system_cc_shared heap under separate Kconfig
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/WUPHJNXFHSMXNQECFQJWQIJ36JA5SUF6/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Action: no action
X-Spamd-Result: default: False [3.59 / 15.00];
	DMARC_POLICY_REJECT(2.00)[google.com : SPF not aligned (relaxed),reject];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	R_DKIM_REJECT(1.00)[google.com:s=20251104];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:jgg@ziepe.ca,m:jiri@resnulli.us,m:hch@infradead.org,m:maddy@linux.ibm.com,m:mpe@ellerman.id.au,m:npiggin@gmail.com,m:chleroy@kernel.org,m:linuxppc-dev@lists.ozlabs.org,m:lkp@intel.com,m:agordeev@linux.ibm.com,m:gerald.schaefer@linux.ibm.com,m:linux-s390@vger.kernel.org,m:djbw@kernel.org,m:thomas.lendacky@amd.com,m:x86@kernel.org,m:arnd@linaro.org,m:benjamin.gaignard@collabora.com,m:Brian.Starkey@arm.com,m:jstultz@google.com,m:mripard@kernel.org,m:afd@ti.com,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:linux-kernel@vger.kernel.org,m:arnd@arndb.de,s:lists@lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[28];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[tjmercier@google.com,linaro-mm-sig-bounces@lists.linaro.org];
	DKIM_TRACE(0.00)[google.com:-];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tjmercier@google.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[amd.com,ziepe.ca,resnulli.us,infradead.org,linux.ibm.com,ellerman.id.au,gmail.com,kernel.org,lists.ozlabs.org,intel.com,vger.kernel.org,linaro.org,collabora.com,arm.com,google.com,ti.com,lists.freedesktop.org,lists.linaro.org,arndb.de];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,mail.gmail.com:mid,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6824266AAEF

T24gV2VkLCBKdW4gMTAsIDIwMjYgYXQgNzoyM+KAr0FNIFN1bWl0IFNlbXdhbCA8c3VtaXQuc2Vt
d2FsQGxpbmFyby5vcmc+IHdyb3RlOg0KPg0KPiBGcm9tOiBBcm5kIEJlcmdtYW5uIDxhcm5kQGFy
bmRiLmRlPg0KPg0KPiBXaGlsZSBzeXN0ZW0gaGVhcCBhbmQgc3lzdGVtX2NjX3NoYXJlZCBoZWFw
IHNoYXJlIGEgbG90IG9mIGNvZGUNCj4gYW5kIGhlbmNlIHRoZSBzYW1lIHNvdXJjZSBmaWxlLCB0
aGVpciB1c2VycyBoYXZlIGRpZmZlcmVudCBuZWVkcy4NCj4NCj4gc3lzdGVtIGhlYXAgdXNlcnMg
bmVlZCBpdCB0byBiZSBhIGxvYWRhYmxlIG1vZHVsZSwgd2hpbGUNCj4gc3lzdGVtX2NjX3NoYXJl
ZCBoZWFwIHVzZXJzIGRvbid0Lg0KPg0KPiBCdWlsZGluZyBhcyBhIGxvYWRhYmxlIG1vZHVsZSBi
cmVha3Mgc3lzdGVtX2NjX3NoYXJlZCBoZWFwIG9uDQo+IHBvd2VycGMgYW5kIHMzOTAgZHVlIHRv
IHVuLWV4cG9ydGVkIHNldF9tZW1vcnlfZW5jcnlwdGVkIC8NCj4gc2V0X21lbW9yeV9kZWNyeXB0
ZWQgZnVuY3Rpb25zLg0KPg0KPiBGaXggdGhlc2UgYnkgcmVvcmdhbmlzaW5nIGNvZGUgdG8gcHV0
IHRoZSBzeXN0ZW1fY2Nfc2hhcmVkIGhlYXANCj4gdW5kZXIgYSBuZXcgS2NvbmZpZyBzeW1ib2ws
IHdoaWNoIGFsbG93cyBlaXRoZXIgYnVpbGRpbmcgYm90aA0KPiBpbnRvIHRoZSBrZXJuZWwsIG9y
IGxlYXZlIGVuY3J5cHRpb24gdXAgdG8gdGhlIGNvbnN1bWVycyBvZiB0aGUNCj4gc3lzdGVtIGhl
YXAuDQo+DQo+IEZpeGVzOiBmZDU1ZWRmZjhhMGEgKCJkbWEtYnVmOiBoZWFwczogc3lzdGVtOiBU
dXJuIHRoZSBoZWFwIGludG8gYSBtb2R1bGUiKQ0KPiBTaWduZWQtb2ZmLWJ5OiBBcm5kIEJlcmdt
YW5uIDxhcm5kQGFybmRiLmRlPg0KPiBTaWduZWQtb2ZmLWJ5OiBTdW1pdCBTZW13YWwgPHN1bWl0
LnNlbXdhbEBsaW5hcm8ub3JnPg0KDQpSZXZpZXdlZC1ieTogVC5KLiBNZXJjaWVyIDx0am1lcmNp
ZXJAZ29vZ2xlLmNvbT4NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMu
bGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWct
bGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
