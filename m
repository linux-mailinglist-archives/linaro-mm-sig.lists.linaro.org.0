Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qHgoEbH1cGmgbAAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 Jan 2026 16:50:09 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id D32425977F
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 Jan 2026 16:50:08 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E976B4015F
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 Jan 2026 15:50:07 +0000 (UTC)
Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com [209.85.222.179])
	by lists.linaro.org (Postfix) with ESMTPS id DF0B03F7BA
	for <linaro-mm-sig@lists.linaro.org>; Wed, 21 Jan 2026 15:50:01 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ziepe.ca header.s=google header.b=VxU5a6kX;
	spf=pass (lists.linaro.org: domain of jgg@ziepe.ca designates 209.85.222.179 as permitted sender) smtp.mailfrom=jgg@ziepe.ca;
	dmarc=none
Received: by mail-qk1-f179.google.com with SMTP id af79cd13be357-8c531473fdcso879748885a.3
        for <linaro-mm-sig@lists.linaro.org>; Wed, 21 Jan 2026 07:50:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1769010601; x=1769615401; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=q7hXpke/3/yOS39pnZAAHMgYMjm6i7TC9CfciaL4A2Y=;
        b=VxU5a6kXTFepsjRw4SmiIavPL0tDrSAhg3VWHOpOw6P2jmCyWY7qRbBdFVyLpBxIwb
         cNU6+MYjq/hvDTm1qcpPedSuUzNwxXpmsHG/bIDjMbAFDOoJRIqUJwWaB1ugeQV1N7wf
         hDYtZSYvA8SsD2VvhsGzQG4HmkzrcZ/zAJUAKbP4aKOLVRzSQ03i0QxNErPGWhZXpBtC
         NwJCiDm0gCOGSyp++x7tHbuI3MnxKQdu2r4ZlyfY3hq9lcjyRGCYidufNfPqcPYaKY00
         QK0alPB5F8FJWQZcGooBHde+/Dwa9Os6H6RCJSmBYGnq6cODTmFGmw7s94GraWtzsFiZ
         GsjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769010601; x=1769615401;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=q7hXpke/3/yOS39pnZAAHMgYMjm6i7TC9CfciaL4A2Y=;
        b=hjLTT87EHfxeN4VcVa4Aj/vvv5jMrn+9855GxRBHyjwQ5baPtSGz2cykVcbhEYQ3IM
         PcZ0LyMFINyrpJ4EQgzuVwYy6p94wrJKkVo9hOA5Y6HBlFvFFnUx0CNaNb0Nr7bxMjUi
         oqh/aVTe1LszKMMJTKBBbtCGT9l4P1R9x32HeRDBTbIW38woeqKy+qQ2erK4entJbp1w
         i6tnM+dBDSJANNxlkRhxYNOfMNP7V6qBJXhomv9BRk7J6vMsTBTHyiE4jTQKS3LqbW8u
         0643nl2sdFDY60PFhhlvj+Z4ifgxt0r/6FhVcGiVhYT56vvK8dMsBx9Ohz52XSAgDcgR
         E2aA==
X-Forwarded-Encrypted: i=1; AJvYcCWrpPsxOwJtORoBrXmmOC/nAlqohzeswO51LTUd4+Rsw5bAndQ/i5npn/k+K2HgqofBFzNfzGPNQPKI/abk@lists.linaro.org
X-Gm-Message-State: AOJu0YxckmhQA5YqUOPJO+nXSsSK9SnQc0vRVRJN8rkaZ7C2mDcL4iW8
	NIMQYxhF5KZse4iggQDiGMw9XBVc+aviltRpuXZujcDy/u9kVDlPLmf/FBmmFuTCRZg=
X-Gm-Gg: AZuq6aKPr8VH+ZntvqIOHLsGTcOkPqm0M90F6BJcT9VrAH4B6bJ5FfPvHgSp51nm72k
	mGDJJwmCqgMh4GXLux6zMR9PaKGyO8nlQsCB7rU3G7bwclT5xcDjfLDB3TML+JLFvqTH4Eksexi
	/DM5yW+SwafOtaAggSmW4lG8+F1Jbitpl2j8tR3R/OLoGAkrC6ovFVeNhLUW1jLTD8lWGVzUO/D
	VsJ7rMDWILReQzL1Si52LfO5/7uZGq9O/Es6RgKT0xu4ToV/mCI/JEW/rC7LwPR2XP6rPVHQpeW
	8ntg7ALdwQ4x7L7OOJqiPAaGgIflvaYL0A+0yZZ/e6JB2VqsBeQ7a4IIin/7DnD1Mw+SfxPIC52
	1ZvS4H3l6cwtqSlWx6KiEssuv6qpGAzW4n3N3deG8vmXQqR9248xH6TtEPOQ2eDKrr2XAQK9NYz
	I/VzstU2EoETsn7wj0vpHHsi+HkCNBBLqV7Nqq1+6Ut8aq5HAL4OnTNVFdYY+qN1f9tjsPzEmDo
	OcsCQ==
X-Received: by 2002:a05:620a:298a:b0:8b2:7290:27da with SMTP id af79cd13be357-8c6a68ec70emr2561552085a.12.1769010601362;
        Wed, 21 Jan 2026 07:50:01 -0800 (PST)
Received: from ziepe.ca (hlfxns017vw-142-162-112-119.dhcp-dynamic.fibreop.ns.bellaliant.net. [142.162.112.119])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-8942e6a9d97sm127467116d6.34.2026.01.21.07.50.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Jan 2026 07:50:00 -0800 (PST)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1viaT2-00000006Emy-0KMB;
	Wed, 21 Jan 2026 11:50:00 -0400
Date: Wed, 21 Jan 2026 11:50:00 -0400
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Pranjal Shrivastava <praan@google.com>
Message-ID: <20260121155000.GE961572@ziepe.ca>
References: <20260121-dmabuf-revoke-v4-0-d311cbc8633d@nvidia.com>
 <20260121-dmabuf-revoke-v4-8-d311cbc8633d@nvidia.com>
 <20260121134712.GZ961572@ziepe.ca>
 <aXDhJ89Yru577jeY@google.com>
 <20260121142528.GC13201@unreal>
 <aXDnAVzTuCSZHxgF@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aXDnAVzTuCSZHxgF@google.com>
X-Spamd-Bar: ---
Message-ID-Hash: MDYM357GBTRD6T3GODAL4KB3I2AGUTWX
X-Message-ID-Hash: MDYM357GBTRD6T3GODAL4KB3I2AGUTWX
X-MailFrom: jgg@ziepe.ca
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Leon Romanovsky <leon@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Alex Deucher <alexander.deucher@amd.com>, Simona Vetter <simona@ffwll.ch>, Gerd Hoffmann <kraxel@redhat.com>, Dmitry Osipenko <dmitry.osipenko@collabora.com>, Gurchetan Singh <gurchetansingh@chromium.org>, Chia-I Wu <olvaffe@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Lucas De Marchi <lucas.demarchi@intel.com>, Thomas =?utf-8?Q?Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Kevin Tian <kevin.tian@intel.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Felix Kuehling <Felix.Kuehling@amd.com>, Alex Williamson <alex@shazbot.org>, Ankit Agrawal <ankita@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-media@vger.kernel.org, dri-devel@lists.f
 reedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, virtualization@lists.linux.dev, intel-xe@lists.freedesktop.org, linux-rdma@vger.kernel.org, iommu@lists.linux.dev, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 8/8] vfio: Validate dma-buf revocation semantics
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/MDYM357GBTRD6T3GODAL4KB3I2AGUTWX/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [0.49 / 15.00];
	R_DKIM_REJECT(1.00)[ziepe.ca:s=google];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[ziepe.ca];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,linaro.org,amd.com,ffwll.ch,redhat.com,collabora.com,chromium.org,gmail.com,linux.intel.com,suse.de,intel.com,8bytes.org,arm.com,shazbot.org,nvidia.com,vger.kernel.org,lists.f,lists.linaro.org,lists.freedesktop.org,lists.linux.dev];
	RCPT_COUNT_TWELVE(0.00)[34];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[ziepe.ca:-];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[jgg@ziepe.ca,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:rdns,lists.linaro.org:helo,ziepe.ca:mid]
X-Rspamd-Queue-Id: D32425977F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Jan 21, 2026 at 02:47:29PM +0000, Pranjal Shrivastava wrote:
> But at the same time, I'd like to discuss if we should think about
> changing the dmabuf core, NULL op == success feels like relying on a bug

Agree, IMHO, it is surprising and counter intuitive in the kernel that
a NULL op means the feature is supported and default to success.

Jason
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
