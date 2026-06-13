Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id R3qDJZ26LGpVVwQAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 13 Jun 2026 04:04:13 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 01C3C67D7E1
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 13 Jun 2026 04:04:13 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=gmail.com header.s=20251104 header.b=N2baWm3m;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=gmail.com (policy=none)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D3118401B0
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 13 Jun 2026 02:04:11 +0000 (UTC)
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com [209.85.215.196])
	by lists.linaro.org (Postfix) with ESMTPS id DA40D3F8E8
	for <linaro-mm-sig@lists.linaro.org>; Sat, 13 Jun 2026 02:04:00 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id 41be03b00d2f7-c8583b8fd89so955731a12.0
        for <linaro-mm-sig@lists.linaro.org>; Fri, 12 Jun 2026 19:04:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781316240; x=1781921040; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=mPoSyMAZC6nuaPbHwX1o/fpMkBKd3DvivicT6BAaRnA=;
        b=N2baWm3mNwRHbXSeu0PPI5SkqragFDEm2AukMomZ4kz711TikwgIMoqf31R1yLLeVH
         gQvaSUHVxJzY36acVUPYx4chyFzCLtfSVC1WVFGiUM/j8ozoVkegpA0BVMuUXM83j8AI
         2X36Y+M7ZVx8U/rd/YoCSad0P3hiaMj+qphRlmsKUoxU0YRG1FMYHM/qdadaTf+wj30y
         bHn74BZd/h+e/KjNSEyOfH4UsJYEhGJwewlknJMOszY3YJjJwaAZ/esv/mP/nb14P8hQ
         153HdLZ+NMiFDRCRUE8RVs9SUDACLgm4VzcRKTXPUMxXYJdiddHQEzThLtkhuQ3NDgxN
         w+MQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781316240; x=1781921040;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mPoSyMAZC6nuaPbHwX1o/fpMkBKd3DvivicT6BAaRnA=;
        b=CRW7j3T4RcHa+5Xm7cJo/jmuB9RfIM42Pg17aqdBd28xzS6HYc4ealN8Esrxd78yf4
         +f1sfeoCVEBNdKgF8bqgSIww67IRuzvAaPEFpI4ShkxGuaRd6WhRTryPtXouHt3E6Iz8
         bGazFXZsjvgF/ccU9twqrah4vt/2Ng2yx9iE44iTLZ6i59dG2KfmSdjbEjtsIO45O22K
         vmDKjawzwn04Xn3ysp6eFFSLDCeEyuyDTRfVK9RFyW+IM1JiOrYVRokyCJnNyM+AYF5D
         GvBT7hyxmmdwMCDjPKWD7T+wWiqS5opex8UuZqoWXy8NyfoeUJbktq+s/f7WtaPJH1RA
         5UKg==
X-Forwarded-Encrypted: i=1; AFNElJ9i+wcv6ueEh38dsAjYKYYoxeMW1E66aRCRmvssOwfueEbOS+O7yd0jkKLU8j95j/7WksqpULvau3Rbqi+8@lists.linaro.org
X-Gm-Message-State: AOJu0YzMyB+wxgcv766xRMPzwjOfNxGwJ6AfdTBSYH2FdLDyGYocBa/+
	//1/StWBQIR9m9nNn60NZUKjF/2PYO6/smy6vchV949Mr2tB4RylvMO/
X-Gm-Gg: Acq92OHV9dYqsJauUmlaa13PtiRUL1/BhPy9H+sXGEWbub+Un3hpDK6wxprrME9ZiiZ
	RGe7Xb5CTbD0V5mUX2wqCLbSvjVC/9KTGiQHhOD+o17tIUXSUjV6JIZU494rI9LkwwicgOBRgZb
	z8S8FfLmWtL8awVU1b1jkrSgPshxquu05/E3uAcEzCB7y/anN3U+MEvLG9IcWF/1dUeQrFwQdOE
	FS30AEyf6e+b41oS4xmfrmyq9idOErOtk3E6ouA4wSvJumTbtANKdEl1jOEb/Sy0j1+Iq9TDljb
	8M7/JiF72zJcmUS7iQoklKO+N7+Vc+wGgIvdUys1OHE8KzDRORQ7XQgKeFLg1XX+HCech0Ljjcs
	79nX4kjM1LwGxrUY6mq+Li4EyCVsxbR7IcK4jyRpSm+Eek5/x2FHeqkZItw1eEGov5X3YiwOZni
	P4j3/j4E+RpKLo0i2X
X-Received: by 2002:a05:6a00:1d9b:b0:842:6c02:2fa4 with SMTP id d2e1a72fcca58-8434cd42d57mr5864692b3a.14.1781316239902;
        Fri, 12 Jun 2026 19:03:59 -0700 (PDT)
Received: from localhost ([2a03:2880:2ff:45::])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8434afc8a5bsm3623847b3a.33.2026.06.12.19.03.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Jun 2026 19:03:59 -0700 (PDT)
Date: Fri, 12 Jun 2026 19:03:34 -0700
From: Stanislav Fomichev <sdf.kernel@gmail.com>
To: Bobby Eshleman <bobbyeshleman@gmail.com>
Message-ID: <aiy6bh2IAHDtBX2L@devvm7509.cco0.facebook.com>
References: <20260612-tcpdm-large-niovs-v3-0-a3b693e76fcb@meta.com>
 <20260612-tcpdm-large-niovs-v3-3-a3b693e76fcb@meta.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260612-tcpdm-large-niovs-v3-3-a3b693e76fcb@meta.com>
X-Spamd-Bar: ---
Message-ID-Hash: FEFO2AI5WVGATSZEUX33INVQ7U2UXPHB
X-Message-ID-Hash: FEFO2AI5WVGATSZEUX33INVQ7U2UXPHB
X-MailFrom: sdf.kernel@gmail.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Donald Hunter <donald.hunter@gmail.com>, Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>, Andrew Lunn <andrew+netdev@lunn.ch>, Gerd Hoffmann <kraxel@redhat.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Shuah Khan <shuah@kernel.org>, netdev@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-kselftest@vger.kernel.org, sdf@fomichev.me, razor@blackwall.org, daniel@iogearbox.net, almasrymina@google.com, matttbe@kernel.org, skhawaja@google.com, dw@davidwei.uk, Bobby Eshleman <bobbyeshleman@meta.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH net-next v3 3/4] selftests/net: ncdevmem: add -b option to set rx-buf-size on bind
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/FEFO2AI5WVGATSZEUX33INVQ7U2UXPHB/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [2.09 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[gmail.com:s=20251104];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:bobbyeshleman@gmail.com,m:donald.hunter@gmail.com,m:kuba@kernel.org,m:davem@davemloft.net,m:edumazet@google.com,m:pabeni@redhat.com,m:horms@kernel.org,m:andrew+netdev@lunn.ch,m:kraxel@redhat.com,m:vivek.kasireddy@intel.com,m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:shuah@kernel.org,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linux-media@vger.kernel.org,m:linaro-mm-sig@lists.linaro.org,m:linux-kselftest@vger.kernel.org,m:sdf@fomichev.me,m:razor@blackwall.org,m:daniel@iogearbox.net,m:almasrymina@google.com,m:matttbe@kernel.org,m:skhawaja@google.com,m:dw@davidwei.uk,m:bobbyeshleman@meta.com,m:donaldhunter@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sdfkernel@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	ARC_NA(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_TO(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[27];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,davemloft.net,google.com,redhat.com,lunn.ch,intel.com,linaro.org,amd.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,fomichev.me,blackwall.org,iogearbox.net,davidwei.uk,meta.com];
	DKIM_TRACE(0.00)[gmail.com:-];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sdfkernel@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig,netdev];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[devvm7509.cco0.facebook.com:mid,fomichev.me:email,meta.com:email,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 01C3C67D7E1

On 06/12, Bobby Eshleman wrote:
> From: Bobby Eshleman <bobbyeshleman@meta.com>
> 
> Add -b <bytes> to request a non-default niov size via
> NETDEV_A_DMABUF_RX_BUF_SIZE. When the value exceeds PAGE_SIZE,
> udmabuf_alloc() switches to an MFD_HUGETLB-backed memfd so each 2 MB
> hugepage produces one naturally-aligned sg entry.
> 
> Reject values > 2 MB up front: MFD_HUGETLB + udmabuf can only guarantee
> 2 MB per sg entry (one hugepage), so a larger rx_buf_size would fail the
> per-sg length/alignment check.
> 
> Add CONFIG_HUGETLBFS=y to drivers/net/hw/config so the new path is
> reachable in the CI kernels built for these tests.
> 
> Signed-off-by: Bobby Eshleman <bobbyeshleman@meta.com>

Acked-by: Stanislav Fomichev <sdf@fomichev.me>
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
