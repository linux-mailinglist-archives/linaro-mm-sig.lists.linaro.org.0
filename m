Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IEekEi+whGk14QMAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 05 Feb 2026 15:58:55 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id B00E6F457F
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 05 Feb 2026 15:58:54 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9D96A3F5B7
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  5 Feb 2026 14:58:53 +0000 (UTC)
Received: from mail-qv1-f68.google.com (mail-qv1-f68.google.com [209.85.219.68])
	by lists.linaro.org (Postfix) with ESMTPS id B40623F799
	for <linaro-mm-sig@lists.linaro.org>; Thu,  5 Feb 2026 14:58:46 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ziepe.ca header.s=google header.b=XAsHUu4U;
	spf=pass (lists.linaro.org: domain of jgg@ziepe.ca designates 209.85.219.68 as permitted sender) smtp.mailfrom=jgg@ziepe.ca;
	dmarc=none
Received: by mail-qv1-f68.google.com with SMTP id 6a1803df08f44-89461ccc46eso22871306d6.2
        for <linaro-mm-sig@lists.linaro.org>; Thu, 05 Feb 2026 06:58:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1770303526; x=1770908326; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=6paZ1/dfF6ZJkTrV436UqQ3Veg/Kl0esrhdcHdeVKCQ=;
        b=XAsHUu4U4ENNP9Buea1yNG09RFHff/LiOu8w30j/tbpT16iJKUJ1ke2zcD30/rg2VD
         ouYmAPlIU12LXnJVZ1us8NbSoiw5t3xJ3Nyl5xuOYqpDLBffWE9fDOIZkWgnjMYGLOQ0
         /S5Fn6bL5ay2CNpg4C/KDekuoBPFsliiGEDDQrVpyzovCT0FmgLstbOB28fIhlO7pRIN
         Kh2QK7510lMYqnNYNysBeXa6d5pEzEHZTr75FiXvjHdonEF6V88Id8q/kS+fExVXyWk5
         1GWF61s67XRAEHYuLwn6VbTuBggFvIKNHtcjF9ezB5l3BZz2803lhm9sK/d6MfmOABSr
         fCow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770303526; x=1770908326;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6paZ1/dfF6ZJkTrV436UqQ3Veg/Kl0esrhdcHdeVKCQ=;
        b=TQ0o3zB7eL36Sc5hecbyA7N9NpwnEGjJAc46IxjdCqVUNVtojGqXi6Vzh3Wot0n0QX
         /hG+VZNZCiBkCSC6Wv5BJ3Fe0KfC1BMpbIdN92HKA+OhRqCM7kqIE86QexzFxhIBvvV3
         WkpmbhUd+Rt6xkksM5iS5vqGxTmKhjUJ3gnxYkHMSm8MDIB8mjQl3hxC+dQ53yv3hiZc
         T5NTZta03HJlM+bmo7Ozpi5qBSD6Jkj2OevgkFHFt6tC88Oeat0uzx+6ibbn3leYfsqa
         Au6pNYEXUM97PAFtDEtg5syfBej0CNaJ0rP42Poem51FhiIYyTo1lSVrsX7iIfo+tLfI
         NQxQ==
X-Forwarded-Encrypted: i=1; AJvYcCWaTC8xwoS3FG+zuJCWcvRu/oxiFVo8YZIhkMIv3aIHzfo+K52EJGHTtYhoLr2hNM8Vg50cOATGsdG8S68V@lists.linaro.org
X-Gm-Message-State: AOJu0YyVEHvBhpxrSa20MdF/E0CjU4hzXm8U3sO4l2JEjfcLOt7/TTaJ
	nxvd8Kb8TtlMObKyvMgYx2vsCxlv1/aeVM3KoeGNcJ3Su3rLRZVmuGMmuE20sJuQHwM=
X-Gm-Gg: AZuq6aL21MQhBSuI30+qrl3UDoY+pQoSDjSiZcqGq9mcd4Y8wYJpqAY0nxY5IpZwAx7
	HoQnIMS7TX6onE1YtTkjm7/9TYh0+hMx7zGconpqSaeUO4bkS+CHo4MuDZ/PqCZ8s0tf7mqGxNX
	lIu4FU8n4cgaVjnkh8o9uYflV+9sepjxh45CLmtSAG7n+Ji1RYXTKwzDvPFf4TDGqeqUi6AzsW4
	ELYwoBLnQ+deTWiAaKmvozJn5Dn7M9fANGRrLbFvIkiU+a6o5+5xK9yc3D+XG4uu+2ONdjW4SFJ
	NKVxyxQJQUiA7+z9uKX2pwF21uj8gKlpKxf2geWfHLiQAs3Sh/maLqYdCuvVr/DrUWrWtHO4Av7
	4Kw76UPF5vJ5+fHN2lBsV6plq+NM2ICzLoSVkpjZcMJH1VCjuV8q4uXT6I8jSd25UcIHitIffAY
	wMbwLhbBfOr01JZoLjLUs4RkUeupW9ktKfdVXUDtOMHlW85Gg9oC6jAuWhWl3d0c+uK1c=
X-Received: by 2002:ad4:5bc1:0:b0:894:6d0b:502 with SMTP id 6a1803df08f44-895221eff32mr95805386d6.59.1770303526139;
        Thu, 05 Feb 2026 06:58:46 -0800 (PST)
Received: from ziepe.ca (hlfxns017vw-142-162-112-119.dhcp-dynamic.fibreop.ns.bellaliant.net. [142.162.112.119])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-89521bffb41sm43278866d6.4.2026.02.05.06.58.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Feb 2026 06:58:45 -0800 (PST)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1vo0of-00000000zky-02N9;
	Thu, 05 Feb 2026 10:58:45 -0400
Date: Thu, 5 Feb 2026 10:58:44 -0400
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Alex Williamson <alex@shazbot.org>
Message-ID: <20260205145844.GM2328995@ziepe.ca>
References: <20260131-dmabuf-revoke-v7-0-463d956bd527@nvidia.com>
 <20260131-dmabuf-revoke-v7-7-463d956bd527@nvidia.com>
 <fb9bf53a-7962-451a-bac2-c61eb52c7a0f@amd.com>
 <20260204095659.5a983af2@shazbot.org>
 <ac33ad1a-330c-4ab5-bb98-4a4dedccf0da@amd.com>
 <20260205121945.GC12824@unreal>
 <20260205142111.GK2328995@ziepe.ca>
 <f27ad57b-d935-4ffa-a65c-9f6b5d9a1f9a@amd.com>
 <1b7ee5ad-6dde-415a-8e06-93daddc9bcef@app.fastmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1b7ee5ad-6dde-415a-8e06-93daddc9bcef@app.fastmail.com>
X-Spamd-Bar: ---
Message-ID-Hash: KULM67ZKSQINBKCKL4DKHXG5YITTPO2C
X-Message-ID-Hash: KULM67ZKSQINBKCKL4DKHXG5YITTPO2C
X-MailFrom: jgg@ziepe.ca
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Leon Romanovsky <leon@kernel.org>, Simona Vetter <simona@ffwll.ch>, Jani Nikula <jani.nikula@intel.com>, Lucas De Marchi <lucas.demarchi@intel.com>, Sumit Semwal <sumit.semwal@linaro.org>, Alex Deucher <alexander.deucher@amd.com>, Gerd Hoffmann <kraxel@redhat.com>, Dmitry Osipenko <dmitry.osipenko@collabora.com>, Gurchetan Singh <gurchetansingh@chromium.org>, Chia-I Wu <olvaffe@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Thomas =?utf-8?Q?Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Kevin Tian <kevin.tian@intel.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Felix Kuehling <Felix.Kuehling@amd.com>, Ankit Agrawal <ankita@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-media@vger.kernel.org, dri-devel@lists.
 freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, virtualization@lists.linux.dev, intel-xe@lists.freedesktop.org, linux-rdma@vger.kernel.org, iommu@lists.linux.dev, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v7 7/8] vfio: Permit VFIO to work with pinned importers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/KULM67ZKSQINBKCKL4DKHXG5YITTPO2C/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.49 / 15.00];
	R_DKIM_REJECT(1.00)[ziepe.ca:s=google];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[amd.com,kernel.org,ffwll.ch,intel.com,linaro.org,redhat.com,collabora.com,chromium.org,gmail.com,linux.intel.com,suse.de,8bytes.org,arm.com,nvidia.com,vger.kernel.org,lists,lists.linaro.org,lists.freedesktop.org,lists.linux.dev];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_NA(0.00)[ziepe.ca];
	DKIM_TRACE(0.00)[ziepe.ca:-];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCPT_COUNT_TWELVE(0.00)[34];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[jgg@ziepe.ca,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.995];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: B00E6F457F
X-Rspamd-Action: no action

On Thu, Feb 05, 2026 at 07:41:11AM -0700, Alex Williamson wrote:
> >> From https://anongit.freedesktop.org/git/drm/drm-misc
> >>  * branch                          drm-misc-next -> FETCH_HEAD
> >> 
> >> $ git show FETCH_HEAD
> >> commit 779ec12c85c9e4547519e3903a371a3b26a289de
> >> Author: Alexander Konyukhov <Alexander.Konyukhov@kaspersky.com>
> >> Date:   Tue Feb 3 16:48:46 2026 +0300
> >> 
> >>     drm/komeda: fix integer overflow in AFBC framebuffer size check
> >> 
> >> $ git merge-base  FETCH_HEAD 61ceaf236115f20f4fdd7cf60f883ada1063349a
> >> 24d479d26b25bce5faea3ddd9fa8f3a6c3129ea7
> >> $ git describe --contains 24d479d26b25bce5faea3ddd9fa8f3a6c3129ea7
> >> v6.19-rc6^0
> >> 
> >> $ git log --oneline 61ceaf236115f20f4fdd7cf60f883ada1063349a ^FETCH_HEAD
> >> 61ceaf236115f2 vfio: Prevent from pinned DMABUF importers to attach to VFIO DMABUF
> >> 
> >> Just pull Alex's tree, the drm-misc-next tree already has v6.19-rc6,
> >> so all they will see is one extra patch from Alex in your PR.
> >> 
> >> No need to backmerge, this is normal git stuff and there won't be
> >> conflicts when they merge a later Linus tag.
> >
> > Correct, but that would merge the same patch through two different 
> > trees. That is usually a pretty big no-go.
> 
> Applying the patch through two different trees is a no-go, but
> merging the same commit from a shared branch or tag is very common
> and acceptable.  It's the same commit after all, there is no
> conflict, no duplicate commit.  When the trees are merged, the
> commit will exist once in the log.  Thanks,

+1

This is how shared branches work. There is no issue here.

Jason
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
