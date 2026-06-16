Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id +yApET/HMWr3pwUAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 16 Jun 2026 23:59:27 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id B84D169580F
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 16 Jun 2026 23:59:26 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=gmail.com header.s=20251104 header.b=Nj5tOD7t;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=gmail.com (policy=none)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BA86940A96
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 16 Jun 2026 21:59:25 +0000 (UTC)
Received: from mail-ot1-f46.google.com (mail-ot1-f46.google.com [209.85.210.46])
	by lists.linaro.org (Postfix) with ESMTPS id ED1883F7DA
	for <linaro-mm-sig@lists.linaro.org>; Tue, 16 Jun 2026 21:59:15 +0000 (UTC)
Received: by mail-ot1-f46.google.com with SMTP id 46e09a7af769-7e6e9408e30so3637316a34.2
        for <linaro-mm-sig@lists.linaro.org>; Tue, 16 Jun 2026 14:59:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781647155; x=1782251955; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=MdIhJ92yHcSeuARKRFApaFACq6jQgJFrqu8oVo70t/I=;
        b=Nj5tOD7tqcf5CWbrnvWg5P5lhlIrAg428z04HDTP1ZxTIOLkCKXDliTXpaaGRMxlDN
         8oSnw8dsXreLeTFPd+I1yXySWTJAP59P4tOCMf5ih9esMI55q6Hvmi4vRlOj43UZiUtC
         KcA61Ph4w00YJU2VxmJxuwP/vL4FlS+RDwmXCniBeSt0f1FvCVaAJQVGA/V2m2eUDNRK
         o+bwVJWv+46BByZ+C/EblnkbnXIfX0eAXgsOOyE4s+FdFsg/xRomIO9Uanm1yy3S3cT3
         JuMNoDc/dzSxDJpL6F3NhfwobCjRg+Z9+ZaSojsVY2FulxjUUwu4YrntLF4jf89UwZ4d
         j59w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781647155; x=1782251955;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MdIhJ92yHcSeuARKRFApaFACq6jQgJFrqu8oVo70t/I=;
        b=ae56lDW0MjsyjQMvCIqbd9hLaxqn+4WSx9Ptf+sezwWBFXAhfEd17sZnibUi2UTSxS
         2N2PaQUvjc1vzv9xMinvgTAbc6hpk9nE+TOb9T4hKz3FPHcIthmlt9robZWkAYpRaLQs
         4OnRf7BEIlYwltNJxEm/YXQ2qAHkGq0zN1hdJ+K6q7SBrA6ODpkh8+AHOYaJ2ntZpfbP
         oGdyw3ZajsZpI9lZ7GxlMqFyC2Taj4YfceR5tTBQlwDd6lgbZ5QrZVmh+G7+BStFiAn4
         FXH70RBlBePeVYlFkHOyhW1P+1KrrDq/IQl5RefAHWNQeT1i0rdJ520xF2sr+8Hqtf7V
         UlVA==
X-Forwarded-Encrypted: i=1; AFNElJ+zBCSfkOcM8PNdU1BvcUuC2J6qC2oRVWqgCjPWa3FYW65n/BFZPnJL3wFjN1NrH9rcd6pixB5jWcbag3Eb@lists.linaro.org
X-Gm-Message-State: AOJu0YyYHOe5CIyGhSoqeu0b4+r8yLWoFLnhCwhtsyHudo/BTjQsk2oO
	6LhGrJxh4pmHYDYzH8XqCwe+Dp/Ep/do6SwpVO48WHa6Wo0lM4VkIGJZ
X-Gm-Gg: Acq92OFxirJNQORGiXj+6xZIjV+Xm97A2aWP7s8LhEltpGE6A+bb7I3HVH8LmOHbca8
	VvuVSZFk9Mme6atcXlPXL+3Jd4w4PXZEHpdop6G+ncYO623FxhGYexlGgHH0ORqwQVs4h9h1OpO
	d6IF1n0IDaSP+911TWn09PRFd7bXcRgXWLHdd+aqIU+H4l5t8s/3f+acv/0+lP8tHaQcdK68RjH
	U6ggXhkx3QBVeM1GQcMgWogatvbSPFYkQAbGw7Yb0FRgiwBEFQsofdEDNuN1FhR2fXo6FpETnkA
	SmzVAZnfDcaFd/9d/WxBIiISH649eUjkwK/DM6Bp3BOQS78upHFw1EuHluPhQhUgNRuZxsgDOD+
	CkC7KKlLXB3NzgOEzuRKmuEwlVrLlNL7hk53XYFAxC24FqyNKAf4W5Iwg9PCNv8O45yfEVTpROB
	8RCd1HxC5a9DxQBHU1Mu+seJ+t1wEYjsxYx0YKpJ/DPXqV
X-Received: by 2002:a05:6830:2783:b0:7e7:352:2f74 with SMTP id 46e09a7af769-7e90b43fae5mr1228845a34.13.1781647155303;
        Tue, 16 Jun 2026 14:59:15 -0700 (PDT)
Received: from devvm29614.prn0.facebook.com ([2a03:2880:ff:54::])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7e7a3c2b08fsm6625336a34.8.2026.06.16.14.59.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Jun 2026 14:59:14 -0700 (PDT)
Date: Tue, 16 Jun 2026 14:59:09 -0700
From: Bobby Eshleman <bobbyeshleman@gmail.com>
To: "Kasireddy, Vivek" <vivek.kasireddy@intel.com>
Message-ID: <ajHHLfgY+pZ8AD97@devvm29614.prn0.facebook.com>
References: <20260611-tcpdm-large-niovs-v2-0-ee2bf15e7523@meta.com>
 <20260611-tcpdm-large-niovs-v2-2-ee2bf15e7523@meta.com>
 <IA0PR11MB71852246277F773AC41DAAA3F8E52@IA0PR11MB7185.namprd11.prod.outlook.com>
 <ajG4zaK9zu7qZT1+@devvm29614.prn0.facebook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ajG4zaK9zu7qZT1+@devvm29614.prn0.facebook.com>
X-Spamd-Bar: ----
Message-ID-Hash: 4ZNVPQCG5P2XXY6ZVGPR3UIXECS445AR
X-Message-ID-Hash: 4ZNVPQCG5P2XXY6ZVGPR3UIXECS445AR
X-MailFrom: bobbyeshleman@gmail.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Donald Hunter <donald.hunter@gmail.com>, Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>, Andrew Lunn <andrew+netdev@lunn.ch>, Gerd Hoffmann <kraxel@redhat.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Shuah Khan <shuah@kernel.org>, Jason Gunthorpe <jgg@ziepe.ca>, "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "linux-kselftest@vger.kernel.org" <linux-kselftest@vger.kernel.org>, "sdf@fomichev.me" <sdf@fomichev.me>, "razor@blackwall.org" <razor@blackwall.org>, "daniel@iogearbox.net" <daniel@iogearbox.net>, "almasrymina@google.com" <alm
 asrymina@google.com>, "matttbe@kernel.org" <matttbe@kernel.org>, "skhawaja@google.com" <skhawaja@google.com>, "dw@davidwei.uk" <dw@davidwei.uk>, Bobby Eshleman <bobbyeshleman@meta.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH net-next v2 2/4] udmabuf: emit one sg entry per pinned folio
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4ZNVPQCG5P2XXY6ZVGPR3UIXECS445AR/>
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
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_RECIPIENTS(0.00)[m:vivek.kasireddy@intel.com,m:donald.hunter@gmail.com,m:kuba@kernel.org,m:davem@davemloft.net,m:edumazet@google.com,m:pabeni@redhat.com,m:horms@kernel.org,m:andrew+netdev@lunn.ch,m:kraxel@redhat.com,m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:shuah@kernel.org,m:jgg@ziepe.ca,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linux-media@vger.kernel.org,m:linaro-mm-sig@lists.linaro.org,m:linux-kselftest@vger.kernel.org,m:sdf@fomichev.me,m:razor@blackwall.org,m:daniel@iogearbox.net,m:alm asrymina@google.com,m:matttbe@kernel.org,m:skhawaja@google.com,m:dw@davidwei.uk,m:bobbyeshleman@meta.com,m:donaldhunter@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[bobbyeshleman@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	RCPT_COUNT_TWELVE(0.00)[27];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:-];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bobbyeshleman@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,davemloft.net,google.com,redhat.com,lunn.ch,linaro.org,amd.com,ziepe.ca,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,fomichev.me,blackwall.org,iogearbox.net,davidwei.uk,meta.com];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig,netdev];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[meta.com:email,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B84D169580F

On Tue, Jun 16, 2026 at 01:57:49PM -0700, Bobby Eshleman wrote:
> On Tue, Jun 16, 2026 at 06:04:03AM +0000, Kasireddy, Vivek wrote:
> > Adding Jason to this discussion.
> > 
> > Hi Bobby,
> > 
> > > Subject: [PATCH net-next v2 2/4] udmabuf: emit one sg entry per pinned
> > > folio
> > > 
> > > From: Bobby Eshleman <bobbyeshleman@meta.com>
> > > 
> > > get_sg_table() emitted one PAGE_SIZE sg entry per page even when the
> > > underlying folio was larger.
> > > 
> > > Instead, walk folios[] and emit one sg entry per folio. When folios
> > We have recently merged a patch (that will make it into 7.2) from Jason that
> > replaced sg_set_folio() with sg_alloc_table_from_pages() in udmabuf driver:
> > https://gitlab.freedesktop.org/drm/tip/-/commit/5bf888673e0dda5a53220fa0c4956271a46c353c
> > 
> > Since you are relying on sg_set_folio(), the core argument against its usage
> > in udmabuf is that it doesn't work well with offsets > PAGE_SIZE, resulting
> > in a malformed scatterlist. Not sure if this can be fixed easily.
> > 
> > > represent large pages (as is for MFD_HUGETLB), each sg entry is a large
> > > page. Normal PAGE_SIZE sg tables are unchanged.
> > > 
> > > This is helpful for importers like net/core/devmem that expect dmabuf sg
> > IMO, udmabuf needs to detect whether importers can handle segments that
> > are > PAGE_SIZE and set the entries appropriately. Please look into how the
> > GPU drivers and other dmabuf exporters/importers handle this situation, so
> > that we can adopt best practices to address this issue.
> > 
> > Thanks,
> > Vivek
> 
> Hey Vivek,
> 
> It sounds looks like that patch might solve my problem. I'll apply and
> troubleshoot from there.
> 
> Thanks!
> 
> Best,
> Bobby

Good news for me, that patch solves the problem. Thanks for bringing
that up! I can drop my udmabuf patch when I respin the series.

Best,
Bobby
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
