Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OIuAFrMD4WmJoQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:43:47 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 07009411259
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:43:46 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 18E9640F66
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:43:46 +0000 (UTC)
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com [209.85.160.171])
	by lists.linaro.org (Postfix) with ESMTPS id 6F3D23F7F5
	for <linaro-mm-sig@lists.linaro.org>; Tue,  9 Dec 2025 11:37:15 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b="ntV/LSDu";
	spf=pass (lists.linaro.org: domain of 21cnbao@gmail.com designates 209.85.160.171 as permitted sender) smtp.mailfrom=21cnbao@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-qt1-f171.google.com with SMTP id d75a77b69052e-4ee2293e6a2so42994051cf.0
        for <linaro-mm-sig@lists.linaro.org>; Tue, 09 Dec 2025 03:37:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765280235; x=1765885035; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9bV6BUSUnHPWqxSVdvnJzA7cFI5OKa6pmer3aetETyA=;
        b=ntV/LSDuzp/9+bqy079sguDw8UOxaP1fhmXVOjZobg9Pq42DtOr335jr2dUQASy9G8
         v9j+w094A6VaGi3P12tBmEDr1Fgn7yFBc0oSZAdoKn5s8nWgRfhmMNZJA/h2UhNvngU2
         6mCpimv4EI3eoypAGNJi2UthtGJ3507UB6kMT53rlFi50DkMQTkHxCNuA4NBOQ6RtjGZ
         cNyf+3TNgjPWMBSvP11mF2zigDcMw86bFbrO0wSruHRk7IxUkhZ/CFNswAx6/B7sa8es
         EjHg/NuKhW6eHXY9D2UGgb2Ysdxmb1ycjOZZ6Qb/tPQTk5y/1aZx0TgU80tdAupjzQpw
         ZuSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765280235; x=1765885035;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=9bV6BUSUnHPWqxSVdvnJzA7cFI5OKa6pmer3aetETyA=;
        b=sF9/UmzWs9Dd5CZe5m/URupHEcuT+XfKBIHP1q22uEE35k0MuUDxM+9RF7xy6Unuc4
         viGSBzdhLTb8oBmOix2kdBTRi6X0tc24bsVKoMEVmODt1yL615aBAqKDnFQxNfcDfBKm
         1w1KvA2JAWDrs1ObWlDWPpoEqgBthYTb6t93/yOzleWFDeu3uQAbRDquMtN0Oq+AMutN
         bJteLVgs3yw6tVG+4M60Ps7gC3JnEtpzl5bfmjAvUc0rHiHHvQohcBtUlZL+GWLPnoH+
         zUL9pnlMhjx5yNfKDwtGsMJVKCuYDm4/wM9kRSRJ+aOdSEnPEmNX2lZcPRbe3MhEz+6p
         71FQ==
X-Forwarded-Encrypted: i=1; AJvYcCXBTF3JCTZWLkdrinFEqW2i+XlUJq3Hcrg/PAM8kv7HsjDlftD09Pb/aMeidhreF/MeyOVWZqEzLhP/HT93@lists.linaro.org
X-Gm-Message-State: AOJu0YzWjRzM3thCiFvHrP86MGccfc8wMsu3TSHuw8cMoxlyvHWanuSB
	ufr6odDjTitIEW+aL6hnqE64yu8YCpO0BhmRahQWmPm/uDw54rPPFA3IQiW+6hgf+dec7TOGcdt
	26IZi0yUu4d/iSFP5yk3X2MwhWekOnLg=
X-Gm-Gg: ASbGncvwQRQuhHelx6lBJmN3r4exDK40+HNhxgOCyrTjrOo8fOs0TXimxELOPAP6idQ
	kTWbtngWCaC4rRWwTR4SyWEmpGT35gDddmVx5igFFSm9oXcXtx1exTsU0Sk6S2HAMJMyhHU/gLj
	piQA88uJlny5Gh9aLcW98w8v79m7HEhhVVUDibB8wl/dLwgl3On/GR6zypuD+wJD1+vyYucmXq7
	wJpfWD3ZBHXMxz2XZRUaDJDAEHx3hs1eFV2sDK0xi3C7F9UZNmuDC8RkRPWjg+E09a4P8L0mM4w
	e2ITsA0m
X-Google-Smtp-Source: AGHT+IEgbsVwagKy3txxv1x4OgD1iaDpms/Rm9Y2qf5oR10n0oOAuFdSPhVPEDts3ojZlS6ZhGmu+kq1Qgj4bmperDM=
X-Received: by 2002:a05:622a:5147:b0:4eb:a10c:de05 with SMTP id
 d75a77b69052e-4f03ff1d52cmr163023291cf.55.1765280234537; Tue, 09 Dec 2025
 03:37:14 -0800 (PST)
MIME-Version: 1.0
References: <3da6a916cd6d489690b05d2bd64a2b3a@honor.com> <CAGsJ_4w-XtJ8zzc8H4OwW4XV21T8FWGxeoMnfAxmAgBhzrvxWQ@mail.gmail.com>
 <6f891b70-7ee9-44a3-92a1-bbeb4d2b9fee@arm.com>
In-Reply-To: <6f891b70-7ee9-44a3-92a1-bbeb4d2b9fee@arm.com>
From: Barry Song <21cnbao@gmail.com>
Date: Tue, 9 Dec 2025 19:37:03 +0800
X-Gm-Features: AQt7F2oS6lqTycELkQSIDw5s74y2U5FK96sITwzfzf6-Pu3qUIktYbBDSrphSI4
Message-ID: <CAGsJ_4xb--mwsPHVFXzcpnZ29Wh8N-OTZNyNVW2CZd-U00A_ww@mail.gmail.com>
To: Ryan Roberts <ryan.roberts@arm.com>
X-Spamd-Bar: ---
X-MailFrom: 21cnbao@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: XLKZ6PIKEMDMAWDOI3PVP7DPXJH53FQL
X-Message-ID-Hash: XLKZ6PIKEMDMAWDOI3PVP7DPXJH53FQL
X-Mailman-Approved-At: Thu, 16 Apr 2026 15:12:41 +0000
CC: gao xu <gaoxu2@honor.com>, "sumit.semwal@linaro.org" <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "surenb@google.com" <surenb@google.com>, zhouxiaolong <zhouxiaolong9@honor.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC] dma-buf: system_heap: add PTE_CONT for larger contiguous
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/XLKZ6PIKEMDMAWDOI3PVP7DPXJH53FQL/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [0.69 / 15.00];
	DATE_IN_PAST(1.00)[3076];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), No valid DKIM,none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	ARC_NA(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[21cnbao@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.389];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,arm.com:email,linaro.org:email,honor.com:email,mail.gmail.com:mid]
X-Rspamd-Queue-Id: 07009411259
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gTW9uLCBEZWMgOCwgMjAyNSBhdCA2OjM44oCvUE0gUnlhbiBSb2JlcnRzIDxyeWFuLnJvYmVy
dHNAYXJtLmNvbT4gd3JvdGU6DQo+DQo+IE9uIDA4LzEyLzIwMjUgMDk6NTIsIEJhcnJ5IFNvbmcg
d3JvdGU6DQo+ID4gT24gTW9uLCBEZWMgOCwgMjAyNSBhdCA1OjQx4oCvUE0gZ2FvIHh1IDxnYW94
dTJAaG9ub3IuY29tPiB3cm90ZToNCj4gPj4NCj4gPj4gY29tbWl0IDA0YzdhZGI1ODcxYSAoImRt
YS1idWY6IHN5c3RlbV9oZWFwOiB1c2UgbGFyZ2VyIGNvbnRpZ3VvdXMgbWFwcGluZ3MNCj4gPj4g
aW5zdGVhZCBvZiBwZXItcGFnZSBtbWFwIikgZmFjaWxpdGF0ZXMgdGhlIHVzZSBvZiBQVEVfQ09O
VC4gVGhlIHN5c3RlbV9oZWFwDQo+ID4+IGFsbG9jYXRlcyBwYWdlcyBvZiBvcmRlciA0IGFuZCA4
IHRoYXQgbWVldCB0aGUgYWxpZ25tZW50IHJlcXVpcmVtZW50cyBmb3INCj4gPj4gUFRFX0NPTlQu
IGVuYWJsaW5nIFBURV9DT05UIGZvciBsYXJnZXIgY29udGlndW91cyBtYXBwaW5ncy4NCj4gPg0K
PiA+IFVuZm9ydHVuYXRlbHksIHdlIGRvbid0IGhhdmUgcHRlX2NvbnQgZm9yIGFyY2hpdGVjdHVy
ZXMgb3RoZXIgdGhhbg0KPiA+IEFBcmNoNjQuIE9uIHRoZSBvdGhlciBoYW5kLCBBQXJjaDY0IGlz
bid0IGF1dG9tYXRpY2FsbHkgbWFwcGluZw0KPiA+IGNvbnRfcHRlIGZvciBtbWFwLiBJdCBtaWdo
dCBiZSBiZXR0ZXIgaWYgdGhpcyB3ZXJlIGRvbmUNCj4gPiBhdXRvbWF0aWNhbGx5IGJ5IHRoZSBB
Uk0gY29kZS4NCj4NCj4gWWVzIGluZGVlZDsgQ09OVF9QVEVfTUFTSyBhbmQgUFRFX0NPTlQgYXJl
IGFybTY0LXNwZWNpZmljIG1hY3JvcyB0aGF0IGNhbm5vdCBiZQ0KPiB1c2VkIG91dHNpZGUgb2Yg
dGhlIGFybTY0IGFyY2ggY29kZS4NCj4NCj4gPg0KPiA+IFJ5YW4oQ2NlZCkgaXMgdGhlIGV4cGVy
dCBvbiBhdXRvbWF0aWNhbGx5IHNldHRpbmcgY29udF9wdGUgZm9yDQo+ID4gY29udGlndW91cyBt
YXBwaW5nLCBzbyBsZXQncyBhc2sgZm9yIHNvbWUgYWR2aWNlIGZyb20gUnlhbi4NCj4NCj4gYXJt
NjQgYXJjaCBjb2RlIHdpbGwgYXV0b21hdGljYWxseSBhbmQgdHJhbnNwYXJlbnRseSBhcHBseSBQ
VEVfQ09OVCB3aGVuZXZlciBpdA0KPiBkZXRlY3RzIHN1aXRhYmxlIGNvbmRpdGlvbnMuIFRob3Nl
IHN1aXRhYmxlIGNvbmRpdGlvbnMgaW5jbHVkZToNCj4NCj4gICAtIHBoeXNpY2FsbHkgY29udGln
dW91cyBibG9jayBvZiA2NEssIGFsaWduZWQgdG8gNjRLDQo+ICAgLSB2aXJ0dWFsbHkgY29udGln
dW91cyBibG9jayBvZiA2NEssIGFsaWduZWQgdG8gNjRLDQo+ICAgLSA2NEsgYmxvY2sgaGFzIHRo
ZSBzYW1lIGFjY2VzcyBwZXJtaXNzaW9ucw0KPiAgIC0gNjRLIGJsb2NrIGFsbCBiZWxvbmdzIHRv
IHRoZSBzYW1lIGZvbGlvDQo+ICAgLSBub3QgYSBzcGVjaWFsIG1hcHBpbmcNCj4NCj4gVGhlIGxh
c3QgMiByZXF1aXJlbWVudHMgYXJlIHRoZSB0cmlja3kgb25lcyBoZXJlOiBXZSByZXF1aXJlIHRo
YXQgZXZlcnkgcGFnZSBpbg0KPiB0aGUgYmxvY2sgYmVsb25ncyB0byB0aGUgc2FtZSBmb2xpbyBi
ZWNhdXNlIGEgY29udGlnb3VzIG1hcHBpbmcgb25seSBtYWludGFpbnMgYQ0KPiBzaW5nbGUgYWNj
ZXNzIGFuZCBkaXJ0eSBiaXQgZm9yIHRoZSB3aG9sZSA2NEsgYmxvY2ssIHNvIHdlIGFyZSBsb3Np
bmcgZmlkZWxpdHkNCj4gdnMgcGVyLXBhZ2UgbWFwcGluZ3MuIEJ1dCB0aGUga2VybmVsIHRyYWNr
cyBhY2Nlc3MvZGlydHkgcGVyIGZvbGlvLCBzbyB0aGUgZXh0cmENCj4gZmlkZWxpdHkgd2UgZ2V0
IGZvciBwZXItcGFnZSBtYXBwaW5ncyBpcyBpbmdvcmVkIGJ5IHRoZSBrZXJuZWwgYW55d2F5IGlm
IHRoZQ0KPiBjb250aWd1b3VzIG1hcHBpbmcgb25seSBtYXBzIHBhZ2VzIGZyb20gYSBzaW5nbGUg
Zm9saW8uIFdlIHJlamVjdCBzcGVjaWFsDQo+IG1hcHBpbmdzIGJlY2F1c2UgdGhleSBhcmUgbm90
IGJhY2tlZCBieSBhIGZvbGlvIGF0IGFsbC4NCj4NCj4gRm9yIHlvdXIgY2FzZSwgcmVtYXBfcGZu
X3JhbmdlKCkgd2lsbCBjcmVhdGUgc3BlY2lhbCBtYXBwaW5ncyBzbyB3ZSB3aWxsIG5ldmVyDQo+
IHNldCB0aGUgUFRFX0NPTlQgYml0Lg0KPg0KPiBMaWtlbHkgd2UgYXJlIGJlaW5nIGEgYml0IHRv
byBjb25zZXJ2YXRpdmUgaGVyZSBhbmQgd2UgbWF5IGJlIGFibGUgdG8gcmVsYXggdGhpcw0KPiBy
ZXF1aXJlbWVudCBpZiB3ZSBrbm93IHRoYXQgbm90aGluZyB3aWxsIGV2ZXIgY29uc3VtZSB0aGUg
YWNjZXNzL2RpcnR5DQo+IGluZm9ybWF0aW9uIGZvciBzcGVjaWFsIG1hcHBpbmdzPyBJJ20gbm90
IGlmIHRoYXQgaXMgdGhlIGNhc2UgaW4gZ2VuZXJhbCB0aG91Z2gNCj4gLSBpdCB3b3VsZCBuZWVk
IHNvbWUgaW52ZXN0aWdhdGlvbi4NCj4NCj4gV2l0aCB0aGF0IGlzc3VlIHJlc29sdmVkLCB0aGVy
ZSBpcyBzdGlsbCBhIHNlY29uZCBpc3N1ZTsgdGhlcmUgYXJlIDIgd2F5cyB0aGUNCj4gYXJtNjQg
YXJjaCBjb2RlIGRldGVjdHMgc3VpdGFibGUgY29udGlndW91cyBtYXBwaW5ncy4gVGhlIHByaW1h
cnkgd2F5IGlzIHZpYSBhDQo+IGNhbGwgdG8gc2V0X3B0ZXMoKS4gVGhpcyBwYXJ0IG9mIHRoZSAi
UFRFIGJhdGNoaW5nIiBBUEkgYW5kIGV4cGxpY2l0bHkgdGVsbHMgdGhlDQo+IGltcGxlbWVudGFp
dG9uIHRoYXQgYWxsIHRoZSBjb25kaXRpb25zIGFyZSBtZXQgKGluY2x1ZGluZyB0aGUgbWVtb3J5
IGJlaW5nDQo+IGJhY2tlZCBieSBhIGZvbGlvKS4gVGhpcyBpcyB0aGUgbW9zdCBlZmZpY2llbnQg
YXBwcm9hY2guIFNlZSBjb250cHRlX3NldF9wdGVzKCkuDQo+DQo+IFRoZXJlIGlzIGEgc2Vjb25k
IChoYWNreSkgYXBwcm9hY2ggd2hpY2ggYXR0ZW1wdHMgdG8gcmVjb2duaXNlIHdoZW4gdGhlIGxh
c3QgUFRFDQo+IG9mIGEgY29udGlndW91cyBibG9jayBpcyBzZXQgYW5kIGF1dG9tYXRpY2FsbHkg
ImZvbGQiIHRoZSBtYXBwaW5nLiBTZWUNCj4gY29udHB0ZV90cnlfZm9sZCgpLiBUaGlzIGFwcHJv
YWNoIGhhcyBhIGNvc3QgYmVjYXVzZSAoZm9yIHN5c3RlbXMgd2l0aG91dA0KPiBCQk1MMl9OT0FC
T1JUKSB3ZSBoYXZlIHRvIGlzc3VlIGEgVExCSSB3aGVuIHdlIGZvbGQgdGhlIHJhbmdlLg0KPg0K
PiBGb3IgcmVtYXBfcGZuX3JhbmdlKCksIHdlIHdvdWxkIGJlIHJlbHlpbmcgb24gdGhlIHNlY29u
ZCBhcHByb2FjaCBzaW5jZSBpdCBpcw0KPiBub3QgY3VycmVudGx5IGJhdGNoZWQgKGFuZCBjb3Vs
ZCBub3QgdXNlIHNldF9wdGVzKCkgYXMgY3VycmVudGx5IHNwZWMnZWQgZHVlIHRvDQo+IHRoZXJl
IGJlaW5nIG5vIGZvbGlvKS4gSWYgd2UgYXJlIGdvaW5nIHRvIGFkZCBzdXBwb3J0IGZvciBjb250
aWd1b3VzIHBmbi1tYXBwZWQNCj4gUFRFcywgaXQgd291bGQgYmUgcHJlZmVyYWJsZSB0byBhZGQg
ZXF1aXZhbGVudCBiYXRjaGluZyBBUElzIChvciByZWxheCBzZXRfcHRlcygpKS4NCj4NCg0KVGhh
bmtzIGEgbG90LCBSeWFuLiBJdCBzZWVtcyBxdWl0ZSB0cmlja3kgdG8gc3VwcG9ydCBhdXRvbWF0
aWMgY29udF9wdGUuDQoNCj4gSSB0aGluayB0aGlzIHdvdWxkIGJlIGEgdXNlZnVsIGltcHJvdmVt
ZW50LCBidXQgaXQncyBub3QgYXMgc3RyYWlnaHRmb3J3YXJkIGFzDQo+IGFkZGluZyBQVEVfQ09O
VCBpbiBzeXN0ZW1faGVhcF9tbWFwKCkuDQoNClNpbmNlIGl0J3MganVzdCBhIGRyaXZlciwgSSdt
IG5vdCBzdXJlIGlmIGl0J3MgYWNjZXB0YWJsZSB0byB1c2UgQ09ORklHX0FSTTY0Lg0KSG93ZXZl
ciwgSSBjYW4gZmluZCBtYW55IGluc3RhbmNlcyBvZiBpdCBpbiBkcml2ZXJzLg0KZHJpdmVycyAl
IGdpdCBncmVwIENPTkZJR19BUk02NCB8IHdjIC1sDQogICAgIDEyNw0KDQpPbiB0aGUgb3RoZXIg
aGFuZCwgYSBjb3JuZXIgY2FzZSBpcyB3aGVuIHRoZSBkbWEtYnVmIGlzIHBhcnRpYWxseSB1bm1h
cHBlZC4NCkkgYXNzdW1lIGNvbnRfcHRlIGNhbiBzdGlsbCBiZSBhdXRvbWF0aWNhbGx5IHVuZm9s
ZGVkLCBldmVuIGZvcg0Kc3BlY2lhbCBtYXBwaW5ncz8NCg0KVGhhbmtzDQpCYXJyeQ0KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBt
YWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2Ny
aWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3Jn
Cg==
