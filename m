Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 40AQI+TiBmoGowIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 15 May 2026 11:09:56 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 14CD154C0FF
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 15 May 2026 11:09:55 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0CD51404E0
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 15 May 2026 09:03:26 +0000 (UTC)
Received: from mail-qv1-f54.google.com (mail-qv1-f54.google.com [209.85.219.54])
	by lists.linaro.org (Postfix) with ESMTPS id A3C743F7F5
	for <linaro-mm-sig@lists.linaro.org>; Thu, 14 May 2026 20:44:11 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=paul-moore.com header.s=google header.b=Yw+4v5or;
	spf=pass (lists.linaro.org: domain of paul@paul-moore.com designates 209.85.219.54 as permitted sender) smtp.mailfrom=paul@paul-moore.com;
	dmarc=pass (policy=none) header.from=paul-moore.com
Received: by mail-qv1-f54.google.com with SMTP id 6a1803df08f44-8b5de17382cso61437336d6.1
        for <linaro-mm-sig@lists.linaro.org>; Thu, 14 May 2026 13:44:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=paul-moore.com; s=google; t=1778791451; x=1779396251; darn=lists.linaro.org;
        h=in-reply-to:references:subject:cc:to:from:content-transfer-encoding
         :mime-version:message-id:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iIn517qMFa/72Ee/XGTDeeK9Cq6VJiGDpV2GCDJOS7E=;
        b=Yw+4v5orjfcAVIA9SZyp5eF/c4Bcsy5UelkKuFo0A91l5n3nzKgP+EpZDEunq+ACp0
         cd0NLlaAaXSEB11IK/vC+m2N7ISvFLxCj1iSnA2zdEztVYlkUMhLZRJhaFs9L7dQiQzj
         ZkL7df+GoI0hZPQ8GTd94XuRVL6amVmnO8N1iOeKKRHYeQfgo1Dq4eLZTgtdFu4UTMMy
         j2J4mvaR21wDN8yYu8J+GDwQ8gO/raYaWMwd0XWgblQ6x0U6pprvRkJPvG5SxE8FUrli
         KfsxTVOUmKA6Qay2cUrEoGdcnelUGc60O0jlwl7Yeory1HmGWjVWXbBfHoWPDRMhBtbg
         cSNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778791451; x=1779396251;
        h=in-reply-to:references:subject:cc:to:from:content-transfer-encoding
         :mime-version:message-id:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iIn517qMFa/72Ee/XGTDeeK9Cq6VJiGDpV2GCDJOS7E=;
        b=gj3SA4zBwwIHTWMVDqdp62QIOkH2mR8q3Igd9Ej0q2Eo6OtMroVt/CalX4G8ki/U5y
         oZR2jlKet9Xlwt/oju5AZFBYMoecsL9zEjruZn5381vlxvO8iri4ytFN0PmARwcpoDpi
         Hh3bbvxeg0cn0TxJ9zB9V2jn5yNVopW2S1/JCSspcb3yIDL/hyDob7OKNLxBermldqxI
         sKJse+DSKVcRm2h04UX5wTo/uzOndrID42tIti85+yC6eBK+vDOLnQ2GTmK0bJyjT13G
         D2pYkAtKJigfT3vMd0CdDWI+D4aBVfkazMrk4KGfiF0eWhEiVdkuBw9OrLm6KBPAk47F
         j4bg==
X-Forwarded-Encrypted: i=1; AFNElJ8JVdekTHXjFLS7mmVcMRdQWBI8X5KYPXRte5sECsT63Qk3feXs4Roh0eo0Zs9CDHpywTQT0b/PJlo7k3cK@lists.linaro.org
X-Gm-Message-State: AOJu0YxD75FoyQI7AgqwgyFs/T5TZsSy+EN+k6Q4JV1IkimtlpNZxVNR
	d4sAUg4FV4QxXBHbXC2Ge4CL/SjCZyCIfwGVwNKAi3k7/i9Ebcfhq+OfrwDaP2Gt/Q==
X-Gm-Gg: Acq92OH0KoE8isC6gVUV3rmBTHsfEMa1TC2MwRMy1tkh8tir/Stc3GPbCu9jT5TAq1E
	BzOqt2mulFlAXDJq7J+iKg2YcmtcDFUn+K1bIsWYcrKARH+6/qfu3MOX1y6Yqzn20p6ay+tZNfo
	EIiWvIEMVssSMQZfqmA1ZzdGNhA2LC5U/hnd5iTwI3smOuUgIrEucIJ/ZYOoyF5bEDTZFYcEPjP
	w13KRpAcIFdiDgnCXaJzDinwbJGv7Xz4V2FasQ9XBPhmJ5HdbZxbzOieBAcDHcdkVnT47LF9vIr
	5hq0JASpB5IQHHa5S0dy3GBfMMRKk315jNpKdpNYpcyjkG3OgYaQO18r+UAHGHFPiiHPwsBIYSb
	aM6e+FOcB4RlfU5VoCf5Hlr8MWvGLgbmBRw34fOFUqfzIoliiAVaz/MDMlcAd6kjXWAWCgKQ9NN
	STHsUHkjgizStFHZ+GM+rZj23FlKaN1GEEeMPwVyUq2RAX2b3B1z8j9jBXtaODsMYSBcH68OGt9
	DzULA8=
X-Received: by 2002:ad4:5e88:0:b0:8ac:b70c:8a9b with SMTP id 6a1803df08f44-8ca0f70f697mr20146116d6.44.1778791451056;
        Thu, 14 May 2026 13:44:11 -0700 (PDT)
Received: from localhost (pool-71-126-255-178.bstnma.fios.verizon.net. [71.126.255.178])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-8c90c358539sm32474826d6.41.2026.05.14.13.44.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 May 2026 13:44:10 -0700 (PDT)
Date: Thu, 14 May 2026 16:44:09 -0400
Message-ID: <16093a0278a6d7d1a0a8bc055c228bed@paul-moore.com>
MIME-Version: 1.0 
X-Mailer: pstg-pwork:20260514_1634/pstg-lib:20260514_1359/pstg-pwork:20260514_1634
From: Paul Moore <paul@paul-moore.com>
To: Albert Esteve <aesteve@redhat.com>, Tejun Heo <tj@kernel.org>, Johannes Weiner <hannes@cmpxchg.org>, =?utf-8?q?Michal_Koutn=C3=BD?= <mkoutny@suse.com>, Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, Sumit Semwal <sumit.semwal@linaro.org>, =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Michal Hocko <mhocko@kernel.org>, Roman Gushchin <roman.gushchin@linux.dev>, Shakeel Butt <shakeel.butt@linux.dev>, Muchun Song <muchun.song@linux.dev>, Andrew Morton <akpm@linux-foundation.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, Christian Brauner <brauner@kernel.org>, James Morris <jmorris@namei.org>, "Serge E. Hallyn" <serge@hallyn.com>, Stephen Smalley <stephen.smalley.work@gmail.com>, Ondrej Mosnacek <omosnace@redhat.com>, Shuah Khan <shuah@kernel.org>
References: <20260512-v2_20230123_tjmercier_google_com-v1-4-6326701c3691@redhat.com>
In-Reply-To: <20260512-v2_20230123_tjmercier_google_com-v1-4-6326701c3691@redhat.com>
X-Spamd-Bar: ---
X-MailFrom: paul@paul-moore.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: APF25P4ZOAJSP2XMUY4VYQEP524RSK5P
X-Message-ID-Hash: APF25P4ZOAJSP2XMUY4VYQEP524RSK5P
X-Mailman-Approved-At: Fri, 15 May 2026 09:02:17 +0000
CC: cgroups@vger.kernel.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-mm@kvack.org, linux-security-module@vger.kernel.org, selinux@vger.kernel.org, linux-kselftest@vger.kernel.org, Albert Esteve <aesteve@redhat.com>, mripard@kernel.org, echanude@redhat.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 4/5] selinux: Restrict cross-cgroup dma-heap charging
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/APF25P4ZOAJSP2XMUY4VYQEP524RSK5P/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 14CD154C0FF
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.09 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[paul-moore.com:s=google];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[paul-moore.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FREEMAIL_TO(0.00)[redhat.com,kernel.org,cmpxchg.org,suse.com,lwn.net,linuxfoundation.org,linaro.org,amd.com,linux.dev,linux-foundation.org,collabora.com,arm.com,google.com,namei.org,hallyn.com,gmail.com];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[36];
	NEURAL_HAM(-0.00)[-0.996];
	FROM_NEQ_ENVFROM(0.00)[paul@paul-moore.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[paul-moore.com:-];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action

On May 12, 2026 Albert Esteve <aesteve@redhat.com> wrote:
> 
> The security_dma_heap_alloc() hook allows security modules
> to control which processes may charge dma-buf allocations
> to another process's cgroup via the charge_pid_fd field of
> DMA_HEAP_IOCTL_ALLOC. Without a policy implementation, the
> hook is a no-op and the restriction is not enforced.
> 
> On SELinux-managed systems any domain with access to a
> dma-heap device node can therefore exhaust another cgroup's
> memory budget without restriction.
> 
> Implement selinux_dma_heap_alloc() using avc_has_perm() with
> a new dma_heap object class and a charge_to permission. Policy
> authors can then grant cross-cgroup charging selectively,
> for example:
> 
>   allow allocator_app_t client_app_t:dma_heap charge_to;
> 
> Signed-off-by: Albert Esteve <aesteve@redhat.com>
> ---
>  security/selinux/hooks.c            | 7 +++++++
>  security/selinux/include/classmap.h | 1 +
>  2 files changed, 8 insertions(+)
> 
> diff --git a/security/selinux/hooks.c b/security/selinux/hooks.c
> index 0f704380a8c81..ea1f410b9f619 100644
> --- a/security/selinux/hooks.c
> +++ b/security/selinux/hooks.c
> @@ -2189,6 +2189,12 @@ static int selinux_capable(const struct cred *cred, struct user_namespace *ns,
>  	return cred_has_capability(cred, cap, opts, ns == &init_user_ns);
>  }
>  
> +static int selinux_dma_heap_alloc(const struct cred *from, const struct cred *to)
> +{
> +	return avc_has_perm(cred_sid(from), cred_sid(to),
> +			    SECCLASS_DMA_HEAP, DMA_HEAP__CHARGE_TO, NULL);
> +}
> +
>  static int selinux_quotactl(int cmds, int type, int id, const struct super_block *sb)
>  {
>  	const struct cred *cred = current_cred();
> @@ -7541,6 +7547,7 @@ static struct security_hook_list selinux_hooks[] __ro_after_init = {
>  	LSM_HOOK_INIT(capget, selinux_capget),
>  	LSM_HOOK_INIT(capset, selinux_capset),
>  	LSM_HOOK_INIT(capable, selinux_capable),
> +	LSM_HOOK_INIT(dma_heap_alloc, selinux_dma_heap_alloc),
>  	LSM_HOOK_INIT(quotactl, selinux_quotactl),
>  	LSM_HOOK_INIT(quota_on, selinux_quota_on),
>  	LSM_HOOK_INIT(syslog, selinux_syslog),
> diff --git a/security/selinux/include/classmap.h b/security/selinux/include/classmap.h
> index 90cb61b164256..d232f7808f6b8 100644
> --- a/security/selinux/include/classmap.h
> +++ b/security/selinux/include/classmap.h
> @@ -181,6 +181,7 @@ const struct security_class_mapping secclass_map[] = {
>  	{ "user_namespace", { "create", NULL } },
>  	{ "memfd_file",
>  	  { COMMON_FILE_PERMS, "execute_no_trans", "entrypoint", NULL } },
> +	{ "dma_heap", { "charge_to", NULL } },
>  	/* last one */ { NULL, {} }
>  };

While we have seen some one-off patches to add specific resource/cgroups
controls in the past, much like this one, we've yet to see a patchset
that provides a more comprehensive set of resource/cgroup access controls
for SELinux.

I'm not opposed to a patch like this, but I would like to see it as part
of a larger effort to introduce access controls across all of the
existing cgroup control points where it makes sense.  In other words,
let's see a design for cgroup access controls so that we can ensure we
have something that is meaningful and makes sense from a policy
developer's perspective.

--
paul-moore.com
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
