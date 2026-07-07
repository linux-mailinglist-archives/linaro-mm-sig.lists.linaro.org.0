Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id noqdBtJwVmpt5gAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 19:24:34 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 81BDA757602
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 19:24:33 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=google.com header.s=20251104 header.b=oaQeuwhR;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=google.com (policy=reject);
	arc=reject ("signature check failed: fail, {[1] = sig:google.com:reject}")
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9E93F401D8
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 17:24:32 +0000 (UTC)
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
	by lists.linaro.org (Postfix) with ESMTPS id 0FBF6409B0
	for <linaro-mm-sig@lists.linaro.org>; Tue,  7 Jul 2026 20:36:33 +0000 (UTC)
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-2cab97c86bdso3965ad.1
        for <linaro-mm-sig@lists.linaro.org>; Tue, 07 Jul 2026 13:36:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1783456592; cv=none;
        d=google.com; s=arc-20260327;
        b=Fr+nzEOWjvWjUBh9zGXJcsLZbD0S7WNrD2x53zOrQcbHY/gwcSwipagVSjTxaf9tKs
         OWmzWFtGJiMJmXbYUn93o+AF9AKL1bAWyv+P6m1jbVM049e4pSm/5A9t/QdGCfN2PiBk
         bihVXUZ2qcKh8+LyoJF1+9WmLDEkw50QSNK2yWjRQ0qB0M14GjY/ij0wAkP1ww8o8Tz1
         i+KHCe9n9Rct55LYiimLMMuQqlqklsoXb45yfVuZTFAzibQ8hNkkcZuxysyVjeixOHK7
         byZh48S4bmr/q6IrL6KwI3oRWik0OlgVwD5ajjp4aS44srrj6wdcYOPVEw+karru60IR
         tKGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=jS1etq2XBh0Y21n7kpErG7DuCVj3yAQ6JGZ2x5w3TvE=;
        fh=sK7HnAm36K8h0QPQLKg86R7oQfbqes4YyFG5xcckATc=;
        b=PLxTFOBBjm/vsDV6sPzgyMIlpVt7WiKP4C1+mcpK0U8b0falFF4AmTyPXAHW5ScIrB
         9Dj1CM8G+E9PSChw2n5MKnRBEV14lLYXazRrYWb3YkZPCE3+iO6Lu2011a7Xf9uyx1we
         CiP+UQiQEJFWxDZxaxZeYaVc3zMcsStGzI6vaaVmVupOOxuM/dmz8FNho1M3CiWDpa2g
         S100abZcoLEAk070VsyQKtAsEonATupyXukXCylVyqIDK2vpBd3z0gs6oAeKO/9TBOiK
         D8lZ14VFwtJJyQ8Jyqh3UOc0A1rWvKtjcsyu6yDt0S0so6r1cb+c9DSI7QeNhPirh1eL
         yURA==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20251104; t=1783456592; x=1784061392; darn=lists.linaro.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=jS1etq2XBh0Y21n7kpErG7DuCVj3yAQ6JGZ2x5w3TvE=;
        b=oaQeuwhRKcreKqIcQ98DhnGDLeQBsOXN8VcTIFWjMyQJ+gI1YQWG/RlR2HzpCMsyjj
         jnQZn+qQz5jnux89oLiZc6q+dgH+t7cIeQubeAB2J1PcCsVaikZHnwIRmOxfSKOYEXqv
         JCwL7CWCOEgHbrZZMCtRr/XyzoXz0vmKa/sbK1vjFscK26YDdXEHJNN6BMalY5ijcNt9
         a1sBleB+sQIC08d/xqQW2QjWiDBwrUQW6OQqoOYi598ZH95p5Mwl3U4H2a9PfRLat5o5
         MI1n/k/hXLeSK5bejRTrc+S0XPxHW9SHCVErmlLPmFLjKXQkB2pHE1CBjcMfVYyi9abd
         6Jog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783456592; x=1784061392;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=jS1etq2XBh0Y21n7kpErG7DuCVj3yAQ6JGZ2x5w3TvE=;
        b=Hse/t+QGLALtNbnEA9ih0We2iXZNqmoqp0IEqCRAjpraNRWhz2OOEiWTVMbTXJIMNx
         BBRKCDhYPqoJfmk9cauLvftadClDVBaA3l9Jut9bVQLk9ibWKypXNtLbrTEFmCYSuSvH
         QplIz34BQIAqsQUjOS4gPeVaDFB9/0uw0Vl9bPtApyp4Pc6wP3EOZz/Q2ON39E0DmsBS
         +pH68PZiFbMC5IZ/WOQcIKS5IBSE5BGhmrKGfPMOVOWE4xzV4unQ2wYaBYvbqXaqd3XU
         nhnU3/Qq/FZakbs5tj0oP6E63SncPtoH6aBFTg9qO5aXwGdNR1PlqyhykINg6besiGyF
         HnBg==
X-Forwarded-Encrypted: i=1; AHgh+RqjSZzprbcTnXXhm6AkUl9eRNy9O1X5YbKyeTPS3T9z++xfWw+JGyZhHR3Q8MhbP7RZb5efYU4xYZ2NXhUI@lists.linaro.org
X-Gm-Message-State: AOJu0Yx3DS1Qm2IAk892nnxfDAD9ZMtKWp7F46+owbstlxBEnXV/g9SU
	Cw0SzjqeTCIHz1m+itPVoUMQEAdgTmcYHNcnMrpY2RHZkOXCaFwNtXJVxjXy8XvicjcNErxUxgJ
	FLs/PTosT3v/kXjW82reHbB+0rEbFaFE/EEvdFDYE
X-Gm-Gg: AfdE7clX9kmeA6e85PZzBSsBMkHqZ8KbC4wtozTQAJyTxvYeI8vapRPQ8cBXMmj7BCy
	8f9M3Azk9yWCg7MoVF8HfqLhDX59HtHxMj5GbedVkX9zB9QM1f3C4rqQhhFyxb/8tKbY1XoMSIR
	+Kwl3MRG/YTpqpvmr3qMK7muKdF2w/5r12Ia5RiyfDPct3xh/k4+5O3BEQDtIgpNTbl7ZDxlWwH
	v/k108RY1fn0FPRPXOTcEChTZQTzkxizDoFNfgK5Ra7AQShkovTkVRHsSvl18CjOZ+167mOk1hz
	ugtNPpQi3KUx8W2XVQ5T772pgziJ+ABgJloY5Q==
X-Received: by 2002:a17:903:1746:b0:2ca:e513:17a6 with SMTP id
 d9443c01a7336-2cce6070055mr514845ad.15.1783456591431; Tue, 07 Jul 2026
 13:36:31 -0700 (PDT)
MIME-Version: 1.0
References: <20260701-tcpdm-large-niovs-v4-0-ca4654f37570@meta.com> <20260701-tcpdm-large-niovs-v4-1-ca4654f37570@meta.com>
In-Reply-To: <20260701-tcpdm-large-niovs-v4-1-ca4654f37570@meta.com>
From: Mina Almasry <almasrymina@google.com>
Date: Tue, 7 Jul 2026 13:36:18 -0700
X-Gm-Features: AVVi8Cft8xhwKuUJQBVnGzgYj4CRKQzZAZeZD_sYSlOKVL1n3UGciPvnN9lcbO0
Message-ID: <CAHS8izNdJ1LTOr_pLjXef6Yv-=JOFPe1GcZtcbStD93Tkpy1XQ@mail.gmail.com>
To: Bobby Eshleman <bobbyeshleman@gmail.com>
X-Spamd-Bar: -----
X-MailFrom: almasrymina@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: PU7OYIUI7NMJXIKTLWFUQZLRUZ7JGS3M
X-Message-ID-Hash: PU7OYIUI7NMJXIKTLWFUQZLRUZ7JGS3M
X-Mailman-Approved-At: Tue, 14 Jul 2026 17:18:32 +0000
CC: Donald Hunter <donald.hunter@gmail.com>, Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>, Andrew Lunn <andrew+netdev@lunn.ch>, Gerd Hoffmann <kraxel@redhat.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Shuah Khan <shuah@kernel.org>, netdev@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-kselftest@vger.kernel.org, sdf@fomichev.me, razor@blackwall.org, daniel@iogearbox.net, matttbe@kernel.org, skhawaja@google.com, dw@davidwei.uk, Joe Damato <joe@dama.to>, Bobby Eshleman <bobbyeshleman@meta.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH net-next v4 1/3] net: devmem: allow rx-buf-size > PAGE_SIZE per dmabuf binding
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/PU7OYIUI7NMJXIKTLWFUQZLRUZ7JGS3M/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Action: add header
X-Spamd-Result: default: False [6.09 / 15.00];
	DMARC_POLICY_REJECT(2.00)[google.com : SPF not aligned (relaxed),reject];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[164];
	R_DKIM_REJECT(1.00)[google.com:s=20251104];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	GREYLIST(0.00)[pass,meta];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[27];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[almasrymina@google.com,linaro-mm-sig-bounces@lists.linaro.org];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_RECIPIENTS(0.00)[m:bobbyeshleman@gmail.com,m:donald.hunter@gmail.com,m:kuba@kernel.org,m:davem@davemloft.net,m:edumazet@google.com,m:pabeni@redhat.com,m:horms@kernel.org,m:andrew+netdev@lunn.ch,m:kraxel@redhat.com,m:vivek.kasireddy@intel.com,m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:shuah@kernel.org,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linux-media@vger.kernel.org,m:linaro-mm-sig@lists.linaro.org,m:linux-kselftest@vger.kernel.org,m:sdf@fomichev.me,m:razor@blackwall.org,m:daniel@iogearbox.net,m:matttbe@kernel.org,m:skhawaja@google.com,m:dw@davidwei.uk,m:joe@dama.to,m:bobbyeshleman@meta.com,m:donaldhunter@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,davemloft.net,google.com,redhat.com,lunn.ch,intel.com,linaro.org,amd.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,fomichev.me,blackwall.org,iogearbox.net,davidwei.uk,dama.to,meta.com];
	DKIM_TRACE(0.00)[google.com:-];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[almasrymina@google.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig,netdev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:from_smtp,lists.linaro.org:helo,lists.linaro.org:rdns,mail.gmail.com:mid,fomichev.me:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 81BDA757602
X-Spam: Yes

T24gV2VkLCBKdWwgMSwgMjAyNiBhdCAxMjoyMuKAr1BNIEJvYmJ5IEVzaGxlbWFuIDxib2JieWVz
aGxlbWFuQGdtYWlsLmNvbT4gd3JvdGU6DQo+DQo+IEZyb206IEJvYmJ5IEVzaGxlbWFuIDxib2Ji
eWVzaGxlbWFuQG1ldGEuY29tPg0KPg0KPiBFdmVyeSBkZXZtZW0gZG1hYnVmIGJpbmRpbmcgdG9k
YXkgaGFuZHMgdGhlIHBhZ2VfcG9vbCBQQUdFX1NJWkUgbmlvdnMuDQo+IFRoaXMgY2FwcyBhIHNp
bmdsZSBSWCBkZXNjcmlwdG9yIGF0IFBBR0VfU0laRSwgYnVybmluZyBDUFUgb24gYnVmZmVyDQo+
IGNodXJuIGZvciBsYXJnZSBmbG93cy4NCj4NCj4gQWRkIGEgYmluZC10aW1lIG5ldGxpbmsgYXR0
cmlidXRlLCBORVRERVZfQV9ETUFCVUZfUlhfQlVGX1NJWkUsIHRoYXQNCj4gbGV0cyB1c2Vyc3Bh
Y2UgcmVxdWVzdCBhIGxhcmdlciBuaW92IHNpemUuIFRoZSB2YWx1ZSBtdXN0IGJlIGEgcG93ZXIg
b2YNCj4gdHdvID49IFBBR0VfU0laRS4NCj4NCj4gTWVhc3VyZW1lbnRzDQo+IC0tLS0tLS0tLS0t
LQ0KPiBTZXR1cDoga3BlcmYgaW4gZGV2bWVtIFJYL1RYIGN1ZGEgbW9kZSwgNCBmbG93cywgNjQg
TUIgbWVzc2FnZXMsIDYwcywNCj4gZGN0Y3AsIG51bS1yeC1xdWV1ZXM9NCwgZG1hYnVmLXJ4L3R4
LXNpemUtbWI9MjA0OCwgMTAgcnVucyBwZXIgbmlvdg0KPiBzaXplLCBtbHg1Lg0KPg0KPiBDUFUg
VXRpbDoNCj4NCj4gICAgbmlvdiAgICAgICAgbmV0IHNpcnEgJSAgICAgICAgbmV0IGlkbGUgJSAg
ICAgICAgIGFwcCBzeXMgJSAgICAgICAgYXBwIGlkbGUgJQ0KPiAgIC0tLS0tICAtLS0tLS0tLS0t
LS0tLS0tICAtLS0tLS0tLS0tLS0tLS0tICAtLS0tLS0tLS0tLS0tLS0tICAtLS0tLS0tLS0tLS0t
LS0tDQo+ICAgICAgNEsgICA2Mi4zOCArLy0gIDguMjcgICAzMy40MCArLy0gIDcuNTEgICA1NC4x
NSArLy0gMTAuMjMgICA0My42NyArLy0gMTAuNTMNCj4gICAgIDE2SyAgIDU4LjkxICsvLSAgNS4z
NSAgIDM1LjIzICsvLSAgNS44OCAgIDQxLjA1ICsvLSAgOC44NyAgIDU2LjQyICsvLSAgOS4yNA0K
PiAgICAgMzJLICAgNjQuMTIgKy8tICAwLjY4ICAgMzEuMDkgKy8tICAxLjQ4ICAgNDQuNTQgKy8t
ICAzLjUxICAgNTIuNjMgKy8tICAzLjY1DQo+ICAgICA2NEsgICA1NC42OSArLy0gIDUuNTQgICAz
OS42NyArLy0gIDUuODEgICAzNS40NyArLy0gIDMuMTEgICA2MS45NyArLy0gIDMuMjcNCj4NCj4g
UlggYXBwIHN5cyAlIGRyb3BzIH4xOSUgZnJvbSA0SyB0byA2NEsuDQo+DQo+IFRocm91Z2hwdXQ6
DQo+DQo+ICAgIG5pb3YgICAgICAgUlggZGV2IEdicHMgICBSWCBmbG93IGF2ZyBHYnBzDQo+ICAg
LS0tLS0gIC0tLS0tLS0tLS0tLS0tLS0gIC0tLS0tLS0tLS0tLS0tLS0tDQo+ICAgICAgNEsgIDMw
MC42MyArLy0gNTMuMjEgICAgNzUuMTYgKy8tIDEzLjMwDQo+ICAgICAxNksgIDMyMS4zNSArLy0g
MjguMjAgICAgODAuMzQgKy8tICA3LjA1DQo+ICAgICAzMksgIDM0Ny42MyArLy0gIDIuMjAgICAg
ODYuOTEgKy8tICAwLjU1DQo+ICAgICA2NEsgIDMzMi4xMSArLy0gMTQuMjYgICAgODMuMDMgKy8t
ICAzLjU2DQo+DQo+IFRocm91Z2hwdXQgc2VlbXMgdG8gaW5jcmVhc2UsIGJ1dCB0aGUgc3RkZXYg
aXMgcHJldHR5IHdpZGUgc28gY291bGQganVzdA0KPiBiZSBub2lzZS4NCj4NCj4ga3BlcmYgc3Vw
cG9ydCAobm90IHlldCBtZXJnZWQpOg0KPiBodHRwczovL2dpdGh1Yi5jb20vZmFjZWJvb2tleHBl
cmltZW50YWwva3BlcmYvY29tbWl0Lzg4Mzc1NzdmOTIwODc2YmNlNjk4NmVjMTg4NjlhYzA0NDM5
ZWJjZDINCj4NCj4gU2lnbmVkLW9mZi1ieTogQm9iYnkgRXNobGVtYW4gPGJvYmJ5ZXNobGVtYW5A
bWV0YS5jb20+DQo+IEFja2VkLWJ5OiBTdGFuaXNsYXYgRm9taWNoZXYgPHNkZkBmb21pY2hldi5t
ZT4NCg0KSSdtIHByZXR0eSBoYXBweSB0byBzZWUgbW9zdCBvZiB0aGlzIHBhdGNoIGJlaW5nIGEg
c3BvdC1mb3Itc3BvdA0KcmVwbGFjZW1lbnQgb2YgUEFHRV9TSVpFIHdpdGggYSB2YXJpYWJsZS4g
RldJVzoNCg0KUmV2aWV3ZWQtYnk6IE1pbmEgQWxtYXNyeSA8YWxtYXNyeW1pbmFAZ29vZ2xlLmNv
bT4NCg0KPiAtLS0NCj4gIERvY3VtZW50YXRpb24vbmV0bGluay9zcGVjcy9uZXRkZXYueWFtbCB8
ICA4ICsrKysrDQo+ICBpbmNsdWRlL3VhcGkvbGludXgvbmV0ZGV2LmggICAgICAgICAgICAgfCAg
MSArDQo+ICBuZXQvY29yZS9kZXZtZW0uYyAgICAgICAgICAgICAgICAgICAgICAgfCA1NSArKysr
KysrKysrKysrKysrKysrLS0tLS0tLS0tLS0tLS0NCj4gIG5ldC9jb3JlL2Rldm1lbS5oICAgICAg
ICAgICAgICAgICAgICAgICB8IDEzICsrKysrLS0tDQo+ICBuZXQvY29yZS9uZXRkZXYtZ2VubC1n
ZW4uYyAgICAgICAgICAgICAgfCAgNSArLS0NCj4gIG5ldC9jb3JlL25ldGRldi1nZW5sLmMgICAg
ICAgICAgICAgICAgICB8IDE5ICsrKysrKysrKystLQ0KPiAgdG9vbHMvaW5jbHVkZS91YXBpL2xp
bnV4L25ldGRldi5oICAgICAgIHwgIDEgKw0KPiAgNyBmaWxlcyBjaGFuZ2VkLCA3MSBpbnNlcnRp
b25zKCspLCAzMSBkZWxldGlvbnMoLSkNCj4NCj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24v
bmV0bGluay9zcGVjcy9uZXRkZXYueWFtbCBiL0RvY3VtZW50YXRpb24vbmV0bGluay9zcGVjcy9u
ZXRkZXYueWFtbA0KPiBpbmRleCA1ZjE0M2RhNzQ1OGMuLjcwYjkwMjAwOGJkMyAxMDA2NDQNCj4g
LS0tIGEvRG9jdW1lbnRhdGlvbi9uZXRsaW5rL3NwZWNzL25ldGRldi55YW1sDQo+ICsrKyBiL0Rv
Y3VtZW50YXRpb24vbmV0bGluay9zcGVjcy9uZXRkZXYueWFtbA0KPiBAQCAtNTk4LDYgKzU5OCwx
MyBAQCBhdHRyaWJ1dGUtc2V0czoNCj4gICAgICAgICAgdHlwZTogdTMyDQo+ICAgICAgICAgIGNo
ZWNrczoNCj4gICAgICAgICAgICBtaW46IDENCj4gKyAgICAgIC0NCj4gKyAgICAgICAgbmFtZTog
cngtYnVmLXNpemUNCj4gKyAgICAgICAgZG9jOiB8DQo+ICsgICAgICAgICAgU2l6ZSBpbiBieXRl
cyBvZiBlYWNoIFJYIGJ1ZmZlciB0aGUgTklDIHdyaXRlcyBpbnRvIGZyb20gdGhlIGJvdW5kDQo+
ICsgICAgICAgICAgZG1hYnVmLiBNdXN0IGJlIGEgcG93ZXIgb2YgdHdvIGFuZCA+PSBQQUdFX1NJ
WkU7IGRlZmF1bHRzIHRvDQo+ICsgICAgICAgICAgUEFHRV9TSVpFLg0KPiArICAgICAgICB0eXBl
OiB1MzINCj4NCj4gIG9wZXJhdGlvbnM6DQo+ICAgIGxpc3Q6DQo+IEBAIC04MTIsNiArODE5LDcg
QEAgb3BlcmF0aW9uczoNCj4gICAgICAgICAgICAgIC0gaWZpbmRleA0KPiAgICAgICAgICAgICAg
LSBmZA0KPiAgICAgICAgICAgICAgLSBxdWV1ZXMNCj4gKyAgICAgICAgICAgIC0gcngtYnVmLXNp
emUNCj4gICAgICAgICAgcmVwbHk6DQo+ICAgICAgICAgICAgYXR0cmlidXRlczoNCj4gICAgICAg
ICAgICAgIC0gaWQNCj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvdWFwaS9saW51eC9uZXRkZXYuaCBi
L2luY2x1ZGUvdWFwaS9saW51eC9uZXRkZXYuaA0KPiBpbmRleCAyZjNhYjc1ZThjYzAuLjg1ZTFk
MjBjNjI2OCAxMDA2NDQNCj4gLS0tIGEvaW5jbHVkZS91YXBpL2xpbnV4L25ldGRldi5oDQo+ICsr
KyBiL2luY2x1ZGUvdWFwaS9saW51eC9uZXRkZXYuaA0KPiBAQCAtMjE5LDYgKzIxOSw3IEBAIGVu
dW0gew0KPiAgICAgICAgIE5FVERFVl9BX0RNQUJVRl9RVUVVRVMsDQo+ICAgICAgICAgTkVUREVW
X0FfRE1BQlVGX0ZELA0KPiAgICAgICAgIE5FVERFVl9BX0RNQUJVRl9JRCwNCj4gKyAgICAgICBO
RVRERVZfQV9ETUFCVUZfUlhfQlVGX1NJWkUsDQo+DQo+ICAgICAgICAgX19ORVRERVZfQV9ETUFC
VUZfTUFYLA0KPiAgICAgICAgIE5FVERFVl9BX0RNQUJVRl9NQVggPSAoX19ORVRERVZfQV9ETUFC
VUZfTUFYIC0gMSkNCj4gZGlmZiAtLWdpdCBhL25ldC9jb3JlL2Rldm1lbS5jIGIvbmV0L2NvcmUv
ZGV2bWVtLmMNCj4gaW5kZXggOTU3ZDZiOTYyMTZiLi4zZDZjZjM1ZTUwZjMgMTAwNjQ0DQo+IC0t
LSBhL25ldC9jb3JlL2Rldm1lbS5jDQo+ICsrKyBiL25ldC9jb3JlL2Rldm1lbS5jDQo+IEBAIC00
Niw3ICs0Niw3IEBAIHN0YXRpYyBkbWFfYWRkcl90IG5ldF9kZXZtZW1fZ2V0X2RtYV9hZGRyKGNv
bnN0IHN0cnVjdCBuZXRfaW92ICpuaW92KQ0KPg0KPiAgICAgICAgIG93bmVyID0gbmV0X2Rldm1l
bV9pb3ZfdG9fY2h1bmtfb3duZXIobmlvdik7DQo+ICAgICAgICAgcmV0dXJuIG93bmVyLT5iYXNl
X2RtYV9hZGRyICsNCj4gLSAgICAgICAgICAgICAgKChkbWFfYWRkcl90KW5ldF9pb3ZfaWR4KG5p
b3YpIDw8IFBBR0VfU0hJRlQpOw0KPiArICAgICAgICAgICAgICAoKGRtYV9hZGRyX3QpbmV0X2lv
dl9pZHgobmlvdikgPDwgb3duZXItPmJpbmRpbmctPm5pb3Zfc2hpZnQpOw0KPiAgfQ0KPg0KPiAg
c3RhdGljIHZvaWQgbmV0X2Rldm1lbV9kbWFidWZfYmluZGluZ19yZWxlYXNlKHN0cnVjdCBwZXJj
cHVfcmVmICpyZWYpDQo+IEBAIC05MCwxNiArOTAsMTcgQEAgbmV0X2Rldm1lbV9hbGxvY19kbWFi
dWYoc3RydWN0IG5ldF9kZXZtZW1fZG1hYnVmX2JpbmRpbmcgKmJpbmRpbmcpDQo+ICAgICAgICAg
c3RydWN0IGRtYWJ1Zl9nZW5wb29sX2NodW5rX293bmVyICpvd25lcjsNCj4gICAgICAgICB1bnNp
Z25lZCBsb25nIGRtYV9hZGRyOw0KPiAgICAgICAgIHN0cnVjdCBuZXRfaW92ICpuaW92Ow0KPiAt
ICAgICAgIHNzaXplX3Qgb2Zmc2V0Ow0KPiAtICAgICAgIHNzaXplX3QgaW5kZXg7DQo+ICsgICAg
ICAgc2l6ZV90IG9mZnNldDsNCj4gKyAgICAgICBzaXplX3QgaW5kZXg7DQo+DQoNCm5pdDogSSB3
b3VsZCBrZWVwIHRoaXMgc2lnbmVkLiBTb21lIG9mIHRoZSBtb3N0IGZydXN0cmF0aW5nIGlzc3Vl
cyBJDQpyYW4gaW50byBpcyBzb21lIG9mIHRoZSB1bmRlcmZsb3dpbmcgYW5kIHRoZW4gcGFzc2lu
ZyBhID4gY2hlY2sgb3INCnNvbWV0aGluZy4gQWx0aG91Z2ggaWYgdGhlIExMTSBpcyBub3QgY29t
cGxhaW5pbmcgYWJvdXQgdGhpcw0KcGFydGljdWxhciBjYXNlLCB0aGVyZSBpcyBwcm9iYWJseSBu
byBpc3N1ZSB3aXRoIGl0LiBJIGFsc28gbm90aWNlIGENCmxvdCBvZiBleGlzdGluZyBjb2RlIHRo
YXQgZGVhbHMgd2l0aCBpbmRleGVzIGFuZCBvZmZzZXRzIGdvZXMgZm9yDQpzaWduZWQuDQoNCi0t
IA0KVGhhbmtzLA0KTWluYQ0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0
cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNp
Zy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
