Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0DZUCaX/+WkqFwMAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 05 May 2026 16:33:09 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id A310A4CF769
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 05 May 2026 16:33:08 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9BE40409F8
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 May 2026 14:33:07 +0000 (UTC)
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	by lists.linaro.org (Postfix) with ESMTPS id 19F9F409B6
	for <linaro-mm-sig@lists.linaro.org>; Tue,  5 May 2026 14:33:05 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20251104 header.b=apYO5NfA;
	dmarc=pass (policy=reject) header.from=google.com;
	spf=pass (lists.linaro.org: domain of tjmercier@google.com designates 209.85.128.50 as permitted sender) smtp.mailfrom=tjmercier@google.com;
	arc=pass ("google.com:s=arc-20240605:i=1")
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-488940ccfa6so95515e9.1
        for <linaro-mm-sig@lists.linaro.org>; Tue, 05 May 2026 07:33:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1777991584; cv=none;
        d=google.com; s=arc-20240605;
        b=B0b76v823+ewyO+EFK/gMnT+z/dwesC0HZotqpft+6iwJB9n4OLt4ZfpZZZczoWXl7
         XoVslPlN3YRGv9PgX89jiGD4r/mQu0lr2uQb/Bnqm2Ptha4Urygcq2ifHg/AhM5Asjo+
         oC+pmAxTV8w0ajDkY7gcvpL4zsm7vprlqSoN7x3P+56gAmkkUHILr4GnKRotZ0VvfRJY
         VToi4hUmpiMRCf9UyzHplUKyFgRk95Iz9w2jwqi5Zkk3baVHmGHG1+TtNasM7mDffrw9
         RC7VF7ci4+w5vilY2jMe+SBf+fU6Nxon3TdivEgaLwExgOiOsTbMC/GHezYtnr7ob51E
         qwXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=5h+jyKMMIPTXybgbDkdR5LLDHZaQlqwfa7Kw+QHGnoc=;
        fh=ekBRspr8bU7BMMz7vQ7JiAJ7Nvn97GmIlK5orMDEikc=;
        b=U0AgKHBFRoSFd52EqwPzIUjku7G9VUO7zTmkU3O4nt0bnI2Itp5CuPYyheo64N6nxF
         bJiX/0v5Lt1WTd1RXpqmlbXV6MXj/DdiP3DL54W4xKD7jmliwNUMpjIQ74gYDR1ON1rs
         WZUFtZDbs5cy80mkYQNjChz2X5tr4u6gI0WNRlnnRL9EJne/zdXXub8L+w4pIVrE6gmx
         lQ8LOa8Bur1W/m9DIxfAktJ1xH+0L/UEkMcwGJGOCAHGpHdwB7KAGklrn107nwnASYa5
         4cs+KtJuorb3sn9vTyD1yMOBsQcA1bWirMjkb4thsBtJwLIS69uVv+uEbnuqTT4RfwFZ
         cGhg==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20251104; t=1777991584; x=1778596384; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5h+jyKMMIPTXybgbDkdR5LLDHZaQlqwfa7Kw+QHGnoc=;
        b=apYO5NfAHjKnhfJlSGHq26ZoNHtAg0PbU3zv15Asmhlv8VtUrj+H4mGLaVWSv7ALYp
         3WofebyGEECrb64KcURwVG1gVzLaoxJk0eh22eqHCHPDLauKA4RzidZ2rt1lYpf2DQq0
         r9DAQId/GLSlAR3OG8IEVsoCPqtFHRygWK96sVvAbFkNXJFoEAvZEjWv8lJjpe3xkSOq
         igglGHm8Whsf7vzEwq4fsXs9nLYjZRHUQovV+4rOKhOUSgzVPNRlC7BfRl+rEKGNK8sA
         MNvrK9Ancg84kmVGR9g9FBDssuuYuG9cXc4ZpS2WtoYUPmZdA/kKs5SuAe/Hi6zlb9Qx
         lZSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777991584; x=1778596384;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=5h+jyKMMIPTXybgbDkdR5LLDHZaQlqwfa7Kw+QHGnoc=;
        b=X/KJctey1/iLZXQ8/kKHo3GuJOK0IlFO67qI4zIS8QAFlruVTv0ycu7UPN/+lbaKbv
         chawHoWjm24UC3VElKz9owwEFi6DfAoJTcGvJx00cGZ40YaQiTxFQKu7X+sp9gx9Posk
         5Ya7/UTwZg9/I/c8MC8hcEhxw7S+JXu++pney0nG2T/4knauaqPLIo6im/jG6YyCi947
         MYE2jQsaAccqnvtlQGP8nPttgJt1bMSbWsly+2eMEXYbe7SHhydSCmx8MyseMT8v0YsE
         w4T+s7mBVcNtH6ssLNpPUHacxtrFqRU5MvnchM9NfS1aV3FOlD45mHaQFyiiFvXIgf7n
         LK+w==
X-Forwarded-Encrypted: i=1; AFNElJ+3hhbdp+bn+1loHrh2U3PJo4pBuabIsxc+60DvkCWvc2BDgbGgmRonU7y8/E/naPJjeIXjN33ST6zM6iwS@lists.linaro.org
X-Gm-Message-State: AOJu0Yz1k8mQC+Ko9zEPEAwbgqjVbKcw/8ZsoGe8vc7LKVTta4U83/HK
	3VRTjS4aUHw9hpduNIocuv6W4paLXW0nOru8stRCr3TRFO3jpdAkuvztDAUdRBK1Qu1hUS2hWGr
	qbARV5BV3ESr6gyb9gtPpTcypTB4dfovPIXK+q6dcywf9iJCfkthr+kfk2vg=
X-Gm-Gg: AeBDieskY8xzEbekVTTRJmyYC3sXx8fF7V77O1vJtOAaJvL2g4o+bv4m6Tuu2Hi9oS1
	DJ+3NOnL1lI/KQl39f9gBG2hNOGwBpyVKhjSh6MnGwPPw7io+hpooMubn0ASIp8AW5edwTXlgLc
	PXKLX7f7dU991vAcN4bnEy4WGqMLnadCfmCPVCv2eTWVTCAzkuhsWkiEFa9geUGHkYPk6qIbdq3
	juxF8U62TnLJMgCJ0qboPRtlw76hDKlqx2WUFC0h0JC5P41zu6fyMSyzk5MScYJeygmuZJRd7Cf
	K0n98jx0j3pKSCbTaZ6ySNBXEgUAkddIA+miMcrrquyvV6PnuRK0gyoSA17nqgwXvOqeghw=
X-Received: by 2002:a05:600d:8498:20b0:48a:5f32:62d0 with SMTP id
 5b1f17b1804b1-48d1474eebdmr937275e9.12.1777991583578; Tue, 05 May 2026
 07:33:03 -0700 (PDT)
MIME-Version: 1.0
References: <CAHijbEXhuVRgkkPA2dAC=njGBU7vpAbxAbsSmxvvPznO-ckVRA@mail.gmail.com>
 <cf945dda-f526-4544-bc43-22f70acb28f5@amd.com> <CAHijbEXQfm4QDDfo1yiVBV9mVvogGqt_BAu2ipnhqa-EDOKteg@mail.gmail.com>
In-Reply-To: <CAHijbEXQfm4QDDfo1yiVBV9mVvogGqt_BAu2ipnhqa-EDOKteg@mail.gmail.com>
From: "T.J. Mercier" <tjmercier@google.com>
Date: Tue, 5 May 2026 07:32:51 -0700
X-Gm-Features: AVHnY4L-CqRCk9K_YM_TIPhfxSGrpHWAX4Wk2aGhZey2Xo5NNg91bzKueU3NeaU
Message-ID: <CABdmKX1pDc7wpLVQzM0ihH6AfW+=KWdyaZuorMqWCbC80Y7-Bw@mail.gmail.com>
To: Julian Orth <ju.orth@gmail.com>
X-Spamd-Bar: ----
Message-ID-Hash: YMPUS77IG5BWGZEBLQ6U33QYXWR3CM2A
X-Message-ID-Hash: YMPUS77IG5BWGZEBLQ6U33QYXWR3CM2A
X-MailFrom: tjmercier@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, corbet@lwn.net, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, Sumit Semwal <sumit.semwal@linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: Regression due to /sys/kernel/dmabuf/buffers removal
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/YMPUS77IG5BWGZEBLQ6U33QYXWR3CM2A/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Queue-Id: A310A4CF769
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [5.09 / 15.00];
	DMARC_POLICY_REJECT(2.00)[google.com : SPF not aligned (relaxed),reject];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	R_DKIM_REJECT(1.00)[google.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[3];
	GREYLIST(0.00)[pass,meta];
	FREEMAIL_TO(0.00)[gmail.com];
	DKIM_TRACE(0.00)[google.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.714];
	FROM_NEQ_ENVFROM(0.00)[tjmercier@google.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:email,linaro.org:email,mail.gmail.com:mid,lists.linaro.org:helo,lists.linaro.org:rdns]

T24gVHVlLCBNYXkgNSwgMjAyNiBhdCA2OjAw4oCvQU0gSnVsaWFuIE9ydGggPGp1Lm9ydGhAZ21h
aWwuY29tPiB3cm90ZToNCj4NCj4gT24gVHVlLCBNYXkgNSwgMjAyNiBhdCAyOjQx4oCvUE0gQ2hy
aXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPiB3cm90ZToNCj4gPg0KPiA+
IEhpIEp1bGlhbiwNCj4gPg0KPiA+IE9uIDUvNS8yNiAxNDoyNSwgSnVsaWFuIE9ydGggd3JvdGU6
DQo+ID4gPiBJbiBhYjRjM2RjZjlhNzE1ODI1MDNiNGZiMjVhZWFiODg0YzY5NmNhYjI1ICgiZG1h
LWJ1ZjogUmVtb3ZlIERNQS1CVUYNCj4gPiA+IHN5c2ZzIHN0YXRzIikgdGhlIC9zeXMva2VybmVs
L2RtYWJ1Zi9idWZmZXIgZGlyZWN0b3J5IHdhcyByZW1vdmVkLg0KPiA+ID4NCj4gPiA+IEkndmUg
YmVlbiB1c2luZyB0aGlzIGludGVyZmFjZSwgc3BlY2lmaWNhbGx5IHRoZSBleHBvcnRlcl9uYW1l
IGZpbGUsDQo+ID4gPiB0byBkZXRlY3QgZG1hYnVmcyBjcmVhdGVkIHZpYSB1ZG1hYnVmLiBTdWNo
IGRtYWJ1ZnMgc2hvdyAidWRtYWJ1ZiIgaW4NCj4gPiA+IGV4cG9ydGVyX25hbWUuIEkndmUgYmVl
biBkb2luZyB0aGlzIGZvciB0d28gcmVhc29uczogMSkgdG8gZGV0ZWN0IHRoYXQNCj4gPiA+IG1t
YXAgb24gc3VjaCBidWZmZXJzIHdpbGwgYmUgZmFzdCBhbmQgMikgdG8gZGV0ZWN0IHRoYXQgR1BV
IGFjY2VzcyB0bw0KPiA+ID4gc3VjaCBidWZmZXJzIHdpbGwgYmUgc2xvdy4NCj4gPg0KPiA+IENy
YXAsIEkgcmVhbGx5IGhvcGVkIHRoYXQgQW5kcm9pZCB3YXMgdGhlIG9ubHkgdXNlciBvZiB0aGF0
IHN5c2ZzIGludGVyZmFjZSBzaW5jZSB0aGF0IGFwcHJvYWNoIHR1cm5lZCBvdXQgdG8gYmUgcXVp
dGUgYnJva2VuLg0KPiA+DQo+ID4gSXQncyBudW1iZXIgb25lIHJ1bGUgb24gTGludXggdGhhdCB3
ZSBkb24ndCBicmVhayB1c2Vyc3BhY2UuIFNvIEkgaG9wZSB0aGF0IHlvdSBkb24ndCBpbnNpc3Qg
b24gYnJpbmdpbmcgdGhhdCBpbnRlcmZhY2UgYmFjaywgYnV0IGlmIHlvdSBkbyBJIHdpbGwganVz
dCByZXZlcnQgdGhlIHJlbW92YWwgdW50aWwgd2UgZm91bmQgYSBiZXR0ZXIgc29sdXRpb24uDQo+
DQo+IEJyaW5naW5nIGl0IGJhY2sgc2hvdWxkbid0IGJlIG5lY2Vzc2FyeS4NCj4NCj4gPg0KPiA+
ID4gV2l0aCB0aGUgcmVtb3ZhbCBvZiB0aGF0IGZpbGUsIHRoYXQgZGV0ZWN0aW9uIG1lY2hhbmlz
bSBubyBsb25nZXIgd29ya3MuDQo+ID4gPg0KPiA+ID4gSSdtIG5vdCBwYXJ0aWN1bGFybHkgZm9u
ZCBvZiB0aGF0IG1lY2hhbmlzbSBidXQgaXQgd2FzIHRoZSBvbmx5IG9uZQ0KPiA+ID4gcHJvdmlk
aW5nIHRoYXQgZnVuY3Rpb25hbGl0eSB0aGF0IEkgY291bGQgZmluZCBhdCB0aGUgdGltZS4gSWYg
dGhlcmUNCj4gPiA+IGlzIGFub3RoZXIgb25lLCBpZGVhbGx5IGFuIGlvY3RsIG9uIHRoZSBkbWFi
dWYsIHBsZWFzZSBsZXQgbWUga25vdy4NCj4gPg0KPiA+IFRoZSB2aXJ0dWFsIGZkaW5mbyBmaWxl
IHlvdSBjYW4gZmluZCB1bmRlciAvcHJvYy8kcGlkL2ZkaW5mby8kZmQgYWxzbyBjb250YWlucyB0
aGUgZXhwb3J0ZXIgbmFtZSBmb3IgdGhlIERNQS1idWYuDQo+ID4NCj4gPiBZb3UgY2FuIGZpbmQg
dGhlIGZ1bGwgZG9jdW1lbnRhdGlvbiBoZXJlOiBodHRwczovL2RvY3Mua2VybmVsLm9yZy9maWxl
c3lzdGVtcy9wcm9jLmh0bWwjZG1hLWJ1ZmZlci1maWxlcw0KPiA+DQo+ID4gSXMgdGhhdCBzdWZm
aWNpZW50Pw0KPg0KPiBJIHRoaW5rIHRoYXQgaXMgc3VmZmljaWVudC4gSSBwcm9iYWJseSBkaWRu
J3QgdXNlIGZkaW5mbyBpbml0aWFsbHkNCj4gYmVjYXVzZSAxKSBpdCdzIGEgbG90IG1vcmUgd29y
ayB0byBwYXJzZSBhbmQgMikgSSB3YXNuJ3Qgc3VyZSBpZiBpdA0KPiB3YXMgaW50ZW5kZWQgdG8g
YmUgbWFjaGluZS1yZWFkYWJsZSBvciBpZiB0aGVyZSBjb3VsZCBzb21ldGltZXMgYmUNCj4gbmV3
bGluZXMgaW4gdGhlIHZhbHVlcyBhbmQgc3VjaC4NCj4NCj4gPg0KPiA+IEFkZGl0aW9uYWwgdG8g
dGhhdCB0aGUgZGVidWdmcyBmb3IgRE1BLWJ1ZiBhbHNvIGNvbnRhaW5zIHRoYXQgaW5mb3JtYXRp
b24gYW5kIEknbSBvcGVuIHRvIHRoZSBzdWdnZXN0aW9uIHdpdGggdGhlIElPQ1RMLg0KPg0KPiBN
eSBhcHBsaWNhdGlvbiBydW5zIGFzIGEgcmVndWxhciB1c2VyIHNvIGl0IGNhbm5vdCBhY2Nlc3Mg
L3N5cy9rZXJuZWwvZGVidWcuDQo+DQo+IEhhdmluZyBhbiBJT0NUTCB3b3VsZCBiZSBpZGVhbCBp
ZiBpdCBpcyBub3QgdG9vIG11Y2ggd29yay4gSSdsbCBmYWxsDQo+IGJhY2sgdG8gZmRpbmZvIGZv
ciBub3cuDQo+DQo+IFRoYW5rcywgSnVsaWFuDQoNClBoZXcsIEknbSBnbGFkIGZkaW5mbyBzdWl0
cyB5b3VyIG5lZWRzLg0KDQpBZGRpbmcgYW4gaW9jdGwgd291bGQgaW50cm9kdWNlIG5ldyBVQVBJ
IHNvIEkgdGhpbmsgd2UnZCB3YW50IHRvIGF2b2lkDQp0aGF0IHVubGVzcyBhYnNvbHV0ZWx5IG5l
Y2Vzc2FyeS4NCg0KVGhhbmtzLA0KVC5KLg0KDQo+ID4NCj4gPiBSZWdhcmRzLA0KPiA+IENocmlz
dGlhbi4NCj4gPg0KPiA+ID4NCj4gPiA+IFNoaXBwaW5nIGFuIGVudGlyZSBCUEYgY29tcGlsZXIg
aW4gbXkgYXBwbGljYXRpb24sIHdoaWNoIHRoZSBvcmlnaW5hbA0KPiA+ID4gcGF0Y2ggc3VnZ2Vz
dHMgYXMgdGhlIHJlcGxhY2VtZW50LCBpcyBub3QgYW4gb3B0aW9uIHdoZW4gdGhlIHJlbW92ZWQN
Cj4gPiA+IGFsdGVybmF0aXZlIHdhcyBzaW1wbHkgcmVhZGluZyBhIGZpbGUuDQo+ID4gPg0KPiA+
ID4gVGhhbmtzLCBKdWxpYW4NCj4gPg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNp
Z0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJv
LW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
